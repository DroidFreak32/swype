.class final Lcom/google/android/gms/internal/zzpw$zzc;
.super Lcom/google/android/gms/internal/zzpw$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic tQ:Lcom/google/android/gms/internal/zzpw;

.field private final tW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpw;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzpw$zzf;-><init>(Lcom/google/android/gms/internal/zzpw;B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tW:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzapl()V
    .registers 9

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 0
    iget-object v2, v0, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 3000
    iget-object v0, v3, Lcom/google/android/gms/internal/zzpw;->tN:Lcom/google/android/gms/common/internal/zzg;

    if-nez v0, :cond_34

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 0
    :goto_10
    iput-object v0, v2, Lcom/google/android/gms/internal/zzpy;->uj:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzpw;->tK:Lcom/google/android/gms/common/internal/zzq;

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 7000
    iget-object v3, v3, Lcom/google/android/gms/internal/zzpw;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 0
    iget-object v3, v3, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpy;->uj:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_18

    .line 3000
    :cond_34
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzpw;->tN:Lcom/google/android/gms/common/internal/zzg;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg;->rX:Ljava/util/Set;

    .line 3000
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/zzpw;->tN:Lcom/google/android/gms/common/internal/zzg;

    .line 5000
    iget-object v4, v0, Lcom/google/android/gms/common/internal/zzg;->yk:Ljava/util/Map;

    .line 3000
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzpw;->tw:Lcom/google/android/gms/internal/zzqa;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzqa;->ux:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzans()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzg$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg$zza;->dT:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_49

    :cond_6f
    move-object v0, v1

    goto :goto_10

    .line 0
    :cond_71
    return-void
.end method
