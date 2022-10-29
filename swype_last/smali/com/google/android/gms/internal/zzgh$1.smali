.class final Lcom/google/android/gms/internal/zzgh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgh;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpe:Lcom/google/android/gms/internal/zzge;

.field final synthetic zzbpf:Lcom/google/android/gms/internal/zzgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzge;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgh$1;->zzbpf:Lcom/google/android/gms/internal/zzgh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgh$1;->zzbpe:Lcom/google/android/gms/internal/zzge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzbpe:Lcom/google/android/gms/internal/zzge;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzge;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->destroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
