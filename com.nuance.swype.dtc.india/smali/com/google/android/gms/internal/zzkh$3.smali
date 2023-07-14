.class final Lcom/google/android/gms/internal/zzkh$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/client/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzclh:Lcom/google/android/gms/internal/zzkh;

.field final synthetic zzcli:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkh;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkh$3;->zzclh:Lcom/google/android/gms/internal/zzkh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkh$3;->zzala:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkh$3;->zzcli:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzcr(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$3;->zzala:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkh$3;->zzcli:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzkh;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
