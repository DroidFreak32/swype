.class public final Lcom/google/android/gms/internal/zzfv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbms:Lcom/google/android/gms/internal/zzft;

.field private final zzbmt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzep;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzft;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfv;->zzbms:Lcom/google/android/gms/internal/zzft;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbmt:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbms:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbmt:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbms:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbms:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbmt:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbms:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbms:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzft;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzmf()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbmt:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v3, "Unregistering eventhandler: "

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzep;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2d
    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfv;->zzbms:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzep;

    invoke-interface {v3, v1, v0}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    goto :goto_6

    :cond_42
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzbmt:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
