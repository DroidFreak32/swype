.class final Lcom/google/android/gms/internal/zze$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzt:Lcom/google/android/gms/internal/zze;

.field private final zzu:Lcom/google/android/gms/internal/zzk;

.field private final zzv:Lcom/google/android/gms/internal/zzm;

.field private final zzw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zze;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zze$zza;->zzt:Lcom/google/android/gms/internal/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iput-object p4, p0, Lcom/google/android/gms/internal/zze$zza;->zzw:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzm;->zzbg:Lcom/google/android/gms/internal/zzr;

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    .line 0
    :goto_7
    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzm;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Ljava/lang/Object;)V

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzm;->zzbh:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzw:Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_29
    return-void

    .line 1000
    :cond_2a
    const/4 v0, 0x0

    goto :goto_7

    .line 0
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzm;->zzbg:Lcom/google/android/gms/internal/zzr;

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzk;->zzag:Lcom/google/android/gms/internal/zzm$zza;

    if-eqz v2, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/internal/zzk;->zzag:Lcom/google/android/gms/internal/zzm$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzm$zza;->zze(Lcom/google/android/gms/internal/zzr;)V

    goto :goto_12

    .line 0
    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzd(Ljava/lang/String;)V

    goto :goto_20
.end method
