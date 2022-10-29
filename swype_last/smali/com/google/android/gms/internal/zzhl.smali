.class public final Lcom/google/android/gms/internal/zzhl;
.super Landroid/os/Handler;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbwg:Lcom/google/android/gms/internal/zzhk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzhm;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_c
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzhm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzhl;-><init>(Lcom/google/android/gms/internal/zzhk;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzhk;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhl;->zzbwg:Lcom/google/android/gms/internal/zzhk;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1000
    :cond_6
    :goto_6
    return-void

    .line 0
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "fetch_html"

    const-string/jumbo v2, "message_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_3f

    move-result v0

    if-eqz v0, :cond_6

    .line 1000
    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzbwg:Lcom/google/android/gms/internal/zzhk;

    const-string/jumbo v2, "request_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "base_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "html"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzhk;->zza$14e1ec6d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3c} :catch_3d

    goto :goto_6

    :catch_3d
    move-exception v0

    goto :goto_6

    .line 0
    :catch_3f
    move-exception v0

    goto :goto_6
.end method
