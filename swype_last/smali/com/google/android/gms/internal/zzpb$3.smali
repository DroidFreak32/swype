.class final Lcom/google/android/gms/internal/zzpb$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iA:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic qO:Lcom/google/android/gms/internal/zzpb;

.field final synthetic qR:Lcom/google/android/gms/internal/zzpb$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpb$zzc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpb$3;->qO:Lcom/google/android/gms/internal/zzpb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpb$3;->iA:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpb$3;->qR:Lcom/google/android/gms/internal/zzpb$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb$3;->iA:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpb$3;->qR:Lcom/google/android/gms/internal/zzpb$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    return-void
.end method
