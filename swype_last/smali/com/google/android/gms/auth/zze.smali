.class public final Lcom/google/android/gms/auth/zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/auth/TokenData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza$6d52043c(Lcom/google/android/gms/auth/TokenData;Landroid/os/Parcel;)V
    .registers 6

    .prologue
    .line 0
    .line 1000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    .line 0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/TokenData;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    .line 2000
    iget-object v2, p0, Lcom/google/android/gms/auth/TokenData;->co:Ljava/lang/String;

    .line 0
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$2cfb68bf(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 3000
    iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->cp:Ljava/lang/Long;

    .line 4000
    if-eqz v1, :cond_23

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 0
    :cond_23
    const/4 v1, 0x4

    .line 5000
    iget-boolean v2, p0, Lcom/google/android/gms/auth/TokenData;->cq:Z

    .line 0
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    .line 6000
    iget-boolean v2, p0, Lcom/google/android/gms/auth/TokenData;->cr:Z

    .line 0
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    .line 7000
    iget-object v2, p0, Lcom/google/android/gms/auth/TokenData;->cs:Ljava/util/List;

    .line 0
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb$62107c48(Landroid/os/Parcel;ILjava/util/List;)V

    .line 8000
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 0
    .line 10000
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcm(Landroid/os/Parcel;)I

    move-result v7

    move-object v6, v0

    move v4, v5

    move-object v3, v0

    move-object v2, v0

    move v1, v5

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v7, :cond_4f

    .line 11000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 12000
    const v9, 0xffff

    and-int/2addr v9, v8

    .line 10000
    packed-switch v9, :pswitch_data_78

    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_20
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_b

    :pswitch_25
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 13000
    :pswitch_2a
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_32

    move-object v3, v0

    goto :goto_b

    :cond_32
    const/16 v8, 0x8

    invoke-static {p1, v3, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza$ae3cd4b(Landroid/os/Parcel;II)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_b

    .line 10000
    :pswitch_40
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_b

    :pswitch_45
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_b

    :pswitch_4a
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzae(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_b

    :cond_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v7, :cond_71

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_71
    new-instance v0, Lcom/google/android/gms/auth/TokenData;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/TokenData;-><init>(ILjava/lang/String;Ljava/lang/Long;ZZLjava/util/List;)V

    .line 0
    return-object v0

    .line 10000
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_40
        :pswitch_45
        :pswitch_4a
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 9000
    new-array v0, p1, [Lcom/google/android/gms/auth/TokenData;

    .line 0
    return-object v0
.end method
