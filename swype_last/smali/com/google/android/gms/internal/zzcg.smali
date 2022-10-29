.class public final Lcom/google/android/gms/internal/zzcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzch;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public final zzail:Ljava/lang/Object;

.field private final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzaql:Landroid/content/Context;

.field public final zzarm:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/zzju;",
            "Lcom/google/android/gms/internal/zzcd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzarn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzcd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaro:Lcom/google/android/gms/internal/zzfs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfs;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzaql:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcg;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcg;->zzaro:Lcom/google/android/gms/internal/zzfs;

    return-void
.end method

.method private zzh(Lcom/google/android/gms/internal/zzju;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcd;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcd;->zzha()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;)Lcom/google/android/gms/internal/zzcd;
    .registers 4

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Landroid/view/View;)Lcom/google/android/gms/internal/zzcd;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Landroid/view/View;)Lcom/google/android/gms/internal/zzcd;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzcd$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzcd$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzju;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzft;)Lcom/google/android/gms/internal/zzcd;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzft;)Lcom/google/android/gms/internal/zzcd;
    .registers 13

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcg;->zzail:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcg;->zzh(Lcom/google/android/gms/internal/zzju;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcd;

    monitor-exit v7

    :goto_12
    return-object v0

    :cond_13
    if-eqz p4, :cond_34

    new-instance v0, Lcom/google/android/gms/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzaql:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcg;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzci;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzft;)V

    :goto_22
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcd;->zza(Lcom/google/android/gms/internal/zzch;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzarn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_12

    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    :try_start_34
    new-instance v0, Lcom/google/android/gms/internal/zzcj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzaql:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcg;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcg;->zzaro:Lcom/google/android/gms/internal/zzfs;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzfs;)V
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_31

    goto :goto_22
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcd;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcd;->zzha()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzju;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcd;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcd;->zzgy()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzju;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcd;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcd;->pause()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzju;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzarm:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcd;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcd;->resume()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
