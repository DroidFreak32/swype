.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected rV:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;
    .registers 6

    .prologue
    .line 0
    .line 1000
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zzb(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public static zzb(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "pending_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "failing_client_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "notify_manager"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v3, :cond_40

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "notify_manager"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput v2, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    invoke-static {}, Lcom/google/android/gms/internal/zzqc;->zzaqd()Lcom/google/android/gms/internal/zzqc;

    move-result-object v1

    .line 3000
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(I)V

    .line 0
    if-eqz v0, :cond_20

    .line 4000
    packed-switch p2, :pswitch_data_4a

    .line 0
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void

    .line 4000
    :pswitch_24
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "failing_client_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_20

    :pswitch_3c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqc;->zzaoo()V

    goto :goto_20

    .line 0
    :cond_40
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    iput v2, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    .line 5000
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(I)V

    goto :goto_20

    .line 4000
    nop

    :pswitch_data_4a
    .packed-switch -0x1
        :pswitch_3c
        :pswitch_24
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_f

    const-string/jumbo v0, "resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    :cond_f
    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    if-eq v0, v3, :cond_29

    .line 2000
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2a

    const-string/jumbo v0, "GoogleApiActivity"

    const-string/jumbo v1, "Activity started without extras"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string/jumbo v0, "pending_intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string/jumbo v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v0, :cond_4d

    if-nez v1, :cond_4d

    const-string/jumbo v0, "GoogleApiActivity"

    const-string/jumbo v1, "Activity started without resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto :goto_29

    :cond_4d
    if-eqz v0, :cond_6e

    :try_start_4f
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/GoogleApiActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I
    :try_end_5f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_4f .. :try_end_5f} :catch_60

    goto :goto_29

    :catch_60
    move-exception v0

    const-string/jumbo v1, "GoogleApiActivity"

    const-string/jumbo v2, "Failed to launch pendingIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto :goto_29

    :cond_6e
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p0, v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment$1887901c(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z

    iput v3, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    goto :goto_29
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "resolution"

    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->rV:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
