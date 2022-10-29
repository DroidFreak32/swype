.class final Lcom/google/android/gms/internal/zzfq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzblg:Lcom/google/android/gms/internal/zzfq$zza;

.field final synthetic zzblj:Lcom/google/android/gms/internal/zzfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzfq$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq$2;->zzblj:Lcom/google/android/gms/internal/zzfq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq$2;->zzblg:Lcom/google/android/gms/internal/zzfq$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzlz()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq$2;->zzblg:Lcom/google/android/gms/internal/zzfq$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$2;->zzblg:Lcom/google/android/gms/internal/zzfq$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfq$zza;->zzblk:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzfp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzfq$zza;->zzh(Ljava/lang/Object;)V

    return-void
.end method
