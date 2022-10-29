.class final Lcom/google/android/gms/internal/zzcd$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzara:Lcom/google/android/gms/internal/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$4;->zzara:Lcom/google/android/gms/internal/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$4;->zzara:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcd;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const-string/jumbo v0, "isVisible"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "isVisible"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "isVisible"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_32
    const/4 v0, 0x1

    :goto_33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd$4;->zzara:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1000
    iget-object v0, v1, Lcom/google/android/gms/internal/zzcd;->zzaqw:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzce;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;Z)V

    goto :goto_43

    .line 0
    :cond_53
    const/4 v0, 0x0

    goto :goto_33
.end method
