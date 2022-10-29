.class public final Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzccz:Landroid/os/ParcelFileDescriptor;

.field private zzcda:Landroid/os/Parcelable;

.field private zzcdb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzccz:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcda:Landroid/os/Parcelable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdb:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->mVersionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzccz:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcda:Landroid/os/Parcelable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdb:Z

    return-void
.end method

.method private zzi([B)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_1f

    :try_start_e
    new-instance v3, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;-><init>(Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/io/OutputStream;[B)V

    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const/4 v3, 0x0

    aget-object v0, v1, v3
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_32

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v1

    move-object v2, v0

    :goto_21
    const-string/jumbo v3, "Error transporting the ad response"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    invoke-static {v2}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_1e

    :catch_32
    move-exception v1

    goto :goto_21
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzccz:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1b

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcda:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_1f

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzi([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzccz:Landroid/os/ParcelFileDescriptor;

    :cond_1b
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzm;->zza(Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Landroid/os/Parcel;I)V

    return-void

    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdb:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzccz:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_11

    const-string/jumbo v0, "File descriptor is empty, returning null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzccz:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_4a
    .catchall {:try_start_1d .. :try_end_28} :catchall_54

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_30
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcda:Landroid/os/Parcelable;
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_59

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdb:Z

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcda:Landroid/os/Parcelable;

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    goto :goto_10

    :catch_4a
    move-exception v0

    :try_start_4b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Could not read from parcel file descriptor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v0

    :catchall_59
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
