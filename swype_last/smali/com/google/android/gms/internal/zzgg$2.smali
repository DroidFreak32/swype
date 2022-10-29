.class final Lcom/google/android/gms/internal/zzgg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgg;->zza(Lcom/google/android/gms/internal/zzky;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpb:Lcom/google/android/gms/internal/zzgg;

.field final synthetic zzbpc:Lcom/google/android/gms/internal/zzky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/internal/zzky;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgg$2;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgg$2;->zzbpc:Lcom/google/android/gms/internal/zzky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg$2;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzgg;->zzboy:Ljava/util/Map;

    .line 0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzky;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgg$2;->zzbpc:Lcom/google/android/gms/internal/zzky;

    if-eq v0, v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgg$2;->zzbpb:Lcom/google/android/gms/internal/zzgg;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzgg;->zzboy:Ljava/util/Map;

    .line 0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgd;->cancel()V

    goto :goto_c

    :cond_2a
    return-void
.end method
