.class final Lcom/google/android/gms/internal/zzco$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzasq:Landroid/view/View;

.field final synthetic zzasr:Lcom/google/android/gms/internal/zzco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzco;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco$1;->zzasr:Lcom/google/android/gms/internal/zzco;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzco$1;->zzasq:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzco$1;->zzasr:Lcom/google/android/gms/internal/zzco;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$1;->zzasq:Landroid/view/View;

    .line 1000
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzcl;

    iget v3, v1, Lcom/google/android/gms/internal/zzco;->zzarv:I

    iget v4, v1, Lcom/google/android/gms/internal/zzco;->zzaso:I

    iget v5, v1, Lcom/google/android/gms/internal/zzco;->zzarx:I

    iget v6, v1, Lcom/google/android/gms/internal/zzco;->zzasp:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcl;-><init>(IIII)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzco;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzcl;)Lcom/google/android/gms/internal/zzco$zza;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcl;->zzhw()V

    iget v3, v0, Lcom/google/android/gms/internal/zzco$zza;->zzasx:I

    if-nez v3, :cond_1

    iget v3, v0, Lcom/google/android/gms/internal/zzco$zza;->zzasy:I

    if-nez v3, :cond_1

    .line 3000
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget v3, v0, Lcom/google/android/gms/internal/zzco$zza;->zzasy:I

    if-nez v3, :cond_2

    .line 2000
    iget v3, v2, Lcom/google/android/gms/internal/zzcl;->zzasb:I

    .line 1000
    if-eqz v3, :cond_0

    :cond_2
    iget v0, v0, Lcom/google/android/gms/internal/zzco$zza;->zzasy:I

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/google/android/gms/internal/zzco;->zzasl:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcm;->zza(Lcom/google/android/gms/internal/zzcl;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/zzco;->zzasl:Lcom/google/android/gms/internal/zzcm;

    .line 3000
    iget-object v3, v0, Lcom/google/android/gms/internal/zzcm;->zzail:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Queue is full, current size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    iget v4, v0, Lcom/google/android/gms/internal/zzcm;->zzash:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/google/android/gms/internal/zzcm;->zzash:I

    .line 4000
    iput v4, v2, Lcom/google/android/gms/internal/zzcl;->zzasc:I

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcm;->zzasi:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1000
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Exception in fetchContentOnUIThread"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/zzco;->zzasm:Lcom/google/android/gms/internal/zzim;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzim;->zza(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method
