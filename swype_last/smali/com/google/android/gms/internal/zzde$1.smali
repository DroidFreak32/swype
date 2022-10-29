.class final Lcom/google/android/gms/internal/zzde$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzde;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbdx:Lcom/google/android/gms/internal/zzde;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzde;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzde$1;->zzbdx:Lcom/google/android/gms/internal/zzde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzde$1;->zzbdx:Lcom/google/android/gms/internal/zzde;

    .line 2000
    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, v3, Lcom/google/android/gms/internal/zzde;->zzbdr:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdk;->zzki()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_d} :catch_4c

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v3, Lcom/google/android/gms/internal/zzde;->zzbdt:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdk;->zzm()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zzde;->zza(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3000
    iget-object v1, v3, Lcom/google/android/gms/internal/zzde;->zzbdp:Ljava/lang/String;

    .line 4000
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_30

    .line 2000
    :catch_4c
    move-exception v0

    const-string/jumbo v1, "CsiReporter:reporter interrupted"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4000
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&it="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3000
    iget-object v1, v3, Lcom/google/android/gms/internal/zzde;->zzbdv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_cc

    iget-object v4, v3, Lcom/google/android/gms/internal/zzde;->zzbdw:Ljava/io/File;

    .line 5000
    if-eqz v4, :cond_c4

    const/4 v2, 0x0

    :try_start_7c
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_82} :catch_9c
    .catchall {:try_start_7c .. :try_end_82} :catchall_b4

    :try_start_82
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8e} :catch_da
    .catchall {:try_start_82 .. :try_end_8e} :catchall_d8

    :try_start_8e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_93

    goto/16 :goto_2

    :catch_93
    move-exception v0

    const-string/jumbo v1, "CsiReporter: Cannot close file: sdk_csi_data.txt."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_9c
    move-exception v0

    move-object v1, v2

    :goto_9e
    :try_start_9e
    const-string/jumbo v2, "CsiReporter: Cannot write to file: sdk_csi_data.txt."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_d8

    if-eqz v1, :cond_2

    :try_start_a6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_ab

    goto/16 :goto_2

    :catch_ab
    move-exception v0

    const-string/jumbo v1, "CsiReporter: Cannot close file: sdk_csi_data.txt."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_b4
    move-exception v0

    move-object v1, v2

    :goto_b6
    if-eqz v1, :cond_bb

    :try_start_b8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    :cond_bb
    :goto_bb
    throw v0

    :catch_bc
    move-exception v1

    const-string/jumbo v2, "CsiReporter: Cannot close file: sdk_csi_data.txt."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bb

    :cond_c4
    const-string/jumbo v0, "CsiReporter: File doesn\'t exists. Cannot write CSI data to file."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3000
    :cond_cc
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, v3, Lcom/google/android/gms/internal/zzde;->mContext:Landroid/content/Context;

    iget-object v2, v3, Lcom/google/android/gms/internal/zzde;->zzarj:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5000
    :catchall_d8
    move-exception v0

    goto :goto_b6

    :catch_da
    move-exception v0

    goto :goto_9e
.end method
