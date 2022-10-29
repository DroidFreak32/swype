.class public Lcom/google/android/gms/ads/internal/overlay/zzc;
.super Lcom/google/android/gms/ads/internal/overlay/zzi;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static final zzbrr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

.field private final zzbrt:Z

.field private zzbru:I

.field private zzbrv:I

.field private zzbrw:Landroid/media/MediaPlayer;

.field private zzbrx:Landroid/net/Uri;

.field private zzbry:I

.field private zzbrz:I

.field private zzbsa:I

.field private zzbsb:I

.field private zzbsc:I

.field private zzbsd:F

.field private zzbse:Z

.field private zzbsf:Z

.field private zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

.field private zzbsh:Z

.field private zzbsi:I

.field private zzbsj:Lcom/google/android/gms/ads/internal/overlay/zzh;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzx;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbru:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsd:F

    invoke-virtual {p0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsh:Z

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrt:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza(Lcom/google/android/gms/ads/internal/overlay/zzi;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)Lcom/google/android/gms/ads/internal/overlay/zzh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsj:Lcom/google/android/gms/ads/internal/overlay/zzh;

    return-object v0
.end method

.method private zzad(I)V
    .registers 4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzpi()V

    :cond_8
    :goto_8
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbru:I

    return-void

    :cond_b
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbru:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzpj()V

    goto :goto_8
.end method

.method private zzb(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_9} :catch_11

    :goto_9
    return-void

    :cond_a
    const-string/jumbo v0, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_9

    :catch_11
    move-exception v0

    goto :goto_9
.end method

.method private zznj()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 0
    const-string/jumbo v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrx:Landroid/net/Uri;

    if-eqz v0, :cond_12

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzy(Z)V

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgd()Lcom/google/android/gms/ads/internal/overlay/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzov()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsa:I

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsh:Z

    if-eqz v0, :cond_d3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getHeight()I

    move-result v3

    .line 5000
    iput v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaie:I

    iput v3, v0, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaif:I

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbvd:Landroid/graphics/SurfaceTexture;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->start()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzox()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_cb

    :goto_6d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrx:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzge()Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zza(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9a} :catch_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_9a} :catch_d7
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_9a} :catch_d5

    goto/16 :goto_12

    :catch_9c
    move-exception v0

    :goto_9d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrx:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Failed to initialize MediaPlayer at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v5, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_12

    :cond_cb
    :try_start_cb
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d3} :catch_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cb .. :try_end_d3} :catch_d7
    .catch Ljava/lang/IllegalStateException; {:try_start_cb .. :try_end_d3} :catch_d5

    :cond_d3
    move-object v0, v1

    goto :goto_6d

    :catch_d5
    move-exception v0

    goto :goto_9d

    :catch_d7
    move-exception v0

    goto :goto_9d
.end method

.method private zznk()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrt:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const-string/jumbo v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzb(F)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    :cond_35
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznn()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-ne v1, v0, :cond_52

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-lez v1, :cond_35

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzns()V

    goto :goto_4
.end method

.method private zznm()V
    .registers 3

    const-string/jumbo v0, "AdMediaPlayerView abandon audio focus"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznt()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsf:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsf:Z

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v0, "AdMediaPlayerView abandon audio focus failed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private zznn()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbru:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbru:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbru:I

    if-eq v1, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private zznq()V
    .registers 2

    const-string/jumbo v0, "AdMediaPlayerView audio focus gained"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsf:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzns()V

    return-void
.end method

.method private zzns()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbse:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsf:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsd:F

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzb(F)V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzb(F)V

    goto :goto_d
.end method

.method private zznt()Landroid/media/AudioManager;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private zzy(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 0
    const-string/jumbo v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzow()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V

    if-eqz p1, :cond_2c

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    .line 6000
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    .line 0
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznm()V

    :cond_2f
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznn()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDuration()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznn()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public getVideoHeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVideoWidth()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAudioFocusChange(I)V
    .registers 3

    .prologue
    .line 0
    if-lez p1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznq()V

    :cond_5
    :goto_5
    return-void

    :cond_6
    if-gez p1, :cond_5

    .line 9000
    const-string/jumbo v0, "AdMediaPlayerView audio focus lost"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsf:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzns()V

    goto :goto_5
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsa:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    const/4 v1, 0x5

    .line 0
    const-string/jumbo v0, "AdMediaPlayerView completion"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V

    .line 3000
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$2;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 10

    .prologue
    const/4 v5, -0x1

    .line 0
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V

    .line 4000
    iput v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    .line 0
    sget-object v2, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzc$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc$3;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 9

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrr:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .registers 10

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    if-lez v2, :cond_3e

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    if-lez v2, :cond_3e

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-nez v2, :cond_3e

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v4, v3, :cond_78

    if-ne v5, v3, :cond_78

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_68

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    div-int/2addr v1, v2

    :cond_3e
    :goto_3e
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzg(II)V

    :cond_4a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_67

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsb:I

    if-lez v2, :cond_58

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsb:I

    if-ne v2, v1, :cond_60

    :cond_58
    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsc:I

    if-lez v2, :cond_63

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsc:I

    if-eq v2, v0, :cond_63

    :cond_60
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznk()V

    :cond_63
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsb:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsc:I

    :cond_67
    return-void

    :cond_68
    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_b4

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_3e

    :cond_78
    if-ne v4, v3, :cond_86

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_b1

    if-le v1, v0, :cond_b1

    move v1, v2

    goto :goto_3e

    :cond_86
    if-ne v5, v3, :cond_94

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_3e

    if-le v1, v2, :cond_3e

    move v1, v2

    goto :goto_3e

    :cond_94
    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    if-ne v5, v6, :cond_ae

    if-le v1, v0, :cond_ae

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    div-int/2addr v1, v3

    :goto_a2
    if-ne v4, v6, :cond_3e

    if-le v1, v2, :cond_3e

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_3e

    :cond_ae
    move v0, v1

    move v1, v3

    goto :goto_a2

    :cond_b1
    move v0, v1

    move v1, v2

    goto :goto_3e

    :cond_b4
    move v1, v2

    goto :goto_3e
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 8

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 0
    const-string/jumbo v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzoj()V

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->seekTo(I)V

    :cond_2f
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznk()V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    if-ne v0, v5, :cond_61

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->play()V

    .line 2000
    :cond_61
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznt()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsf:Z

    if-nez v1, :cond_75

    invoke-virtual {v0, p0, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_79

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznq()V

    .line 0
    :cond_75
    :goto_75
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzns()V

    return-void

    .line 2000
    :cond_79
    const-string/jumbo v0, "AdMediaPlayerView audio focus request failed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_75
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    const-string/jumbo v0, "AdMediaPlayerView surface created"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznj()V

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$4;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    const/4 v2, 0x1

    const-string/jumbo v0, "AdMediaPlayerView surface destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzow()V

    :cond_20
    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$5;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzy(Z)V

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "AdMediaPlayerView surface changed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_34

    move v0, v1

    :goto_e
    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    if-ne v3, p2, :cond_36

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    if-ne v3, p3, :cond_36

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2a

    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->seekTo(I)V

    :cond_27
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->play()V

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzg(II)V

    :cond_33
    return-void

    :cond_34
    move v0, v2

    goto :goto_e

    :cond_36
    move v1, v2

    goto :goto_16
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzi;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbry:I

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrz:I

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->requestLayout()V

    :cond_3b
    return-void
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 0
    const-string/jumbo v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznn()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$7;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8000
    :cond_27
    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    .line 0
    return-void
.end method

.method public play()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 0
    const-string/jumbo v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznn()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$6;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7000
    :cond_1f
    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    .line 0
    return-void
.end method

.method public seekTo(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznn()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    :goto_27
    return-void

    :cond_28
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    goto :goto_27
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrx:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsi:I

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznj()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->invalidate()V

    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 0
    const-string/jumbo v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrw:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzad(I)V

    .line 1000
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrv:I

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zznm()V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbrs:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->onStop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsd:F

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzns()V

    return-void
.end method

.method public zza(FF)V
    .registers 9

    .prologue
    const v5, 0x3fc90fdb

    const v4, -0x4036f025

    const v3, 0x3fdf66f3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_3e

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsg:Lcom/google/android/gms/ads/internal/overlay/zzw;

    .line 10000
    iget v0, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaie:I

    iget v1, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaif:I

    if-le v0, v1, :cond_3f

    mul-float v0, v3, p1

    iget v1, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaie:I

    int-to-float v1, v1

    div-float v1, v0, v1

    mul-float v0, v3, p2

    iget v3, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaie:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    :goto_22
    iget v3, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbva:F

    sub-float v1, v3, v1

    iput v1, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbva:F

    iget v1, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbvb:F

    sub-float v0, v1, v0

    iput v0, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbvb:F

    iget v0, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbvb:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_36

    iput v4, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbvb:F

    :cond_36
    iget v0, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbvb:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3e

    iput v5, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbvb:F

    .line 0
    :cond_3e
    return-void

    .line 10000
    :cond_3f
    mul-float v0, v3, p1

    iget v1, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaif:I

    int-to-float v1, v1

    div-float v1, v0, v1

    mul-float v0, v3, p2

    iget v3, v2, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaif:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    goto :goto_22
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/zzh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsj:Lcom/google/android/gms/ads/internal/overlay/zzh;

    return-void
.end method

.method public zzni()Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "MediaPlayer"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbsh:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, " spherical"

    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const-string/jumbo v0, ""

    goto :goto_a

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public zzno()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbse:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzns()V

    return-void
.end method

.method public zznp()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbse:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzns()V

    return-void
.end method
