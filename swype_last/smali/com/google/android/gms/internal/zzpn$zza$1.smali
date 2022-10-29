.class final Lcom/google/android/gms/internal/zzpn$zza$1;
.super Lcom/google/android/gms/internal/zzqe$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpn$zza;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sQ:Landroid/app/Dialog;

.field final synthetic sR:Lcom/google/android/gms/internal/zzpn$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpn$zza;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpn$zza$1;->sR:Lcom/google/android/gms/internal/zzpn$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpn$zza$1;->sQ:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqe$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaou()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza$1;->sR:Lcom/google/android/gms/internal/zzpn$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpn;->zzaot()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza$1;->sQ:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza$1;->sQ:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_14
    return-void
.end method
