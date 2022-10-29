.class public final Lcom/google/android/gms/internal/zzqy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqy$zzc;,
        Lcom/google/android/gms/internal/zzqy$zzb;
    }
.end annotation


# static fields
.field static final vF:[Lcom/google/android/gms/internal/zzpm$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private final ui:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field final vG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final vH:Lcom/google/android/gms/internal/zzqy$zzb;

.field vI:Lcom/google/android/gms/internal/zzqy$zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzpm$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzqy;->vF:[Lcom/google/android/gms/internal/zzpm$zza;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/Api$zze;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzqy$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqy$1;-><init>(Lcom/google/android/gms/internal/zzqy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vH:Lcom/google/android/gms/internal/zzqy$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vI:Lcom/google/android/gms/internal/zzqy$zzc;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqy;->ui:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy;->ui:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzqy$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqy$1;-><init>(Lcom/google/android/gms/internal/zzqy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vH:Lcom/google/android/gms/internal/zzqy$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vI:Lcom/google/android/gms/internal/zzqy$zzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqy;->ui:Ljava/util/Map;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqy;)Lcom/google/android/gms/internal/zzqy$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vI:Lcom/google/android/gms/internal/zzqy$zzc;

    return-object v0
.end method


# virtual methods
.method public final release()V
    .registers 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/zzqy;->vF:[Lcom/google/android/gms/internal/zzpm$zza;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzpm$zza;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_22

    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzpm$zza;->zza(Lcom/google/android/gms/internal/zzqy$zzb;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzpm$zza;->zzaov()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method final zzg(Lcom/google/android/gms/internal/zzpm$zza;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy;->vH:Lcom/google/android/gms/internal/zzqy$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpm$zza;->zza(Lcom/google/android/gms/internal/zzqy$zzb;)V

    return-void
.end method
