.class public Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"


# instance fields
.field private zzahy:Lcom/google/android/gms/internal/zzhi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private zzdb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhi;->zzdb()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "Could not forward setContentViewSet to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzhi;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_9

    :goto_5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "Could not forward onActivityResult to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public onBackPressed()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzhi;->zznw()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_11

    move-result v0

    :cond_b
    :goto_b
    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_10
    return-void

    :catch_11
    move-exception v1

    const-string/jumbo v2, "Could not forward onBackPressed to ad overlay:"

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzc(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzhi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-nez v0, :cond_1b

    const-string/jumbo v0, "Could not create ad overlay."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcx(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhi;->onCreate(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string/jumbo v1, "Could not forward onCreate to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_1a
.end method

.method protected onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhi;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Could not forward onDestroy to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhi;->onPause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Could not forward onPause to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhi;->onRestart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Could not forward onRestart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhi;->onResume()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Could not forward onResume to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhi;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Could not forward onSaveInstanceState to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhi;->onStart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Could not forward onStart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onStop()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzahy:Lcom/google/android/gms/internal/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhi;->onStop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Could not forward onStop to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method public setContentView(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdb()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdb()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdb()V

    return-void
.end method
