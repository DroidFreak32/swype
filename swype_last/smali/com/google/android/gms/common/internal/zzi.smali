.class public abstract Lcom/google/android/gms/common/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzi;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/internal/zzi$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/zzi$1;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static zza$5fe6cfb0(Lcom/google/android/gms/internal/zzqk;Landroid/content/Intent;)Lcom/google/android/gms/common/internal/zzi;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/internal/zzi$3;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/gms/common/internal/zzi$3;-><init>(Landroid/content/Intent;Lcom/google/android/gms/internal/zzqk;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzi;->zzasr()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string/jumbo v1, "DialogRedirect"

    const-string/jumbo v2, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public abstract zzasr()V
.end method
