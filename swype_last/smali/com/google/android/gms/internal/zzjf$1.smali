.class final Lcom/google/android/gms/internal/zzjf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjf;->zza(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzdk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzake:Lcom/google/android/gms/internal/zzju$zza;

.field final synthetic zzchj:Lcom/google/android/gms/internal/zzjf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjf;Lcom/google/android/gms/internal/zzju$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjf$1;->zzchj:Lcom/google/android/gms/internal/zzjf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjf$1;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf$1;->zzchj:Lcom/google/android/gms/internal/zzjf;

    new-instance v1, Lcom/google/android/gms/internal/zzju;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjf$1;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzju;-><init>(Lcom/google/android/gms/internal/zzju$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjf;->zzb(Lcom/google/android/gms/internal/zzju;)V

    return-void
.end method
