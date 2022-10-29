.class final Lcom/google/android/gms/internal/zzpb$zzd$1;
.super Lcom/google/android/gms/internal/zzpe$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpb$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qT:Lcom/google/android/gms/internal/zzpb$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpb$zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpb$zzd$1;->qT:Lcom/google/android/gms/internal/zzpb$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpe$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzw(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb$zzd$1;->qT:Lcom/google/android/gms/internal/zzpb$zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpb$zzd;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
