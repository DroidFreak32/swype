.class final Lcom/google/android/gms/internal/zzkn$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkn$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzkn$zza;Lcom/google/android/gms/internal/zzm$zzb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcmk:Lcom/google/android/gms/internal/zzm$zzb;

.field final synthetic zzcml:Lcom/google/android/gms/internal/zzkn$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzkn$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn$zzb$1;->zzcmk:Lcom/google/android/gms/internal/zzm$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkn$zzb$1;->zzcml:Lcom/google/android/gms/internal/zzkn$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn$zzb$1;->zzcmk:Lcom/google/android/gms/internal/zzm$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkn$zzb$1;->zzcml:Lcom/google/android/gms/internal/zzkn$zza;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzkn$zza;->zzqu()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzm$zzb;->zzb(Ljava/lang/Object;)V

    return-void
.end method
