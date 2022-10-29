.class final Lcom/google/android/gms/internal/zzcq$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field zzatf:Ljava/io/ByteArrayOutputStream;

.field zzatg:Landroid/util/Base64OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Landroid/util/Base64OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatf:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatg:Landroid/util/Base64OutputStream;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatg:Landroid/util/Base64OutputStream;

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_16

    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_1e
    .catchall {:try_start_6 .. :try_end_10} :catchall_2d

    move-result-object v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatf:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatg:Landroid/util/Base64OutputStream;

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string/jumbo v1, "HashManager: Unable to convert to Base64."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string/jumbo v1, "HashManager: Unable to convert to Base64."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2d

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatf:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatg:Landroid/util/Base64OutputStream;

    goto :goto_15

    :catchall_2d
    move-exception v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatf:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcq$zza;->zzatg:Landroid/util/Base64OutputStream;

    throw v0
.end method
