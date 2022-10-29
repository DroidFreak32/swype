.class final Lcom/google/android/gms/internal/zzpv$2;
.super Lcom/google/android/gms/internal/zzqa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpv;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ty:Lcom/google/android/gms/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/internal/zzpz;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv$2;->ty:Lcom/google/android/gms/internal/zzpv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqa$zza;-><init>(Lcom/google/android/gms/internal/zzpz;)V

    return-void
.end method


# virtual methods
.method public final zzapl()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$2;->ty:Lcom/google/android/gms/internal/zzpv;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpv;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqa;->uB:Lcom/google/android/gms/internal/zzqh$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqh$zza;->zzm(Landroid/os/Bundle;)V

    return-void
.end method
