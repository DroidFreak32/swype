.class final Lcom/google/android/gms/internal/zzco$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzco$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzasw:Lcom/google/android/gms/internal/zzco$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzco$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasw:Lcom/google/android/gms/internal/zzco$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 0
    check-cast p1, Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasw:Lcom/google/android/gms/internal/zzco$2;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzco$2;->zzasr:Lcom/google/android/gms/internal/zzco;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasw:Lcom/google/android/gms/internal/zzco$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzco$2;->zzast:Lcom/google/android/gms/internal/zzcl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasw:Lcom/google/android/gms/internal/zzco$2;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzco$2;->zzasu:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasw:Lcom/google/android/gms/internal/zzco$2;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzco$2;->zzasv:Z

    .line 3000
    iget-object v4, v0, Lcom/google/android/gms/internal/zzcl;->zzail:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v5, v0, Lcom/google/android/gms/internal/zzcl;->zzasd:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/google/android/gms/internal/zzcl;->zzasd:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcl;->zzd(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcl;->zzhq()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzco;->zzasl:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcm;->zzb(Lcom/google/android/gms/internal/zzcl;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    .line 3000
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2000
    :cond_2
    :try_start_3
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/zzcl;->zzd(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Json string may be malformed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Failed to get webview content."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/zzco;->zzasm:Lcom/google/android/gms/internal/zzim;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzim;->zza(Ljava/lang/Throwable;Z)V

    goto :goto_1
.end method
