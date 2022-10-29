.class public Lcom/google/android/gms/ads/internal/overlay/zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzp;)Z
    .registers 7

    :try_start_0
    const-string/jumbo v1, "Launching an intent: "

    invoke-virtual {p2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzkh;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p3, :cond_23

    invoke-interface {p3}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzdo()V

    :cond_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_15

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_24
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/overlay/zzp;)Z
    .registers 9

    const/4 v4, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_b

    const-string/jumbo v0, "No intent data for launcher overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_a
    return v1

    :cond_b
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzp;)Z

    move-result v1

    goto :goto_a

    :cond_16
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "Open GMSG did not contain a URL."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_a

    :cond_2a
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3d
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_50
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->zzbro:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->zzbro:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-ge v3, v4, :cond_8b

    const-string/jumbo v2, "Could not parse component name from open GMSG: "

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->zzbro:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_85

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_77
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_a

    :cond_7b
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3d

    :cond_85
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_77

    :cond_8b
    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_93
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->zzbrp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a2

    :try_start_9b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_9e} :catch_a8

    move-result v0

    :goto_9f
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_a2
    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzp;)Z

    move-result v1

    goto/16 :goto_a

    :catch_a8
    move-exception v0

    const-string/jumbo v0, "Could not parse intent flags."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9f
.end method
