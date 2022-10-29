.class public final Lcom/google/android/gms/common/internal/safeparcel/zzb;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/os/Parcel;IF)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IJ)V
    .registers 6

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IZ)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;II)V

    if-eqz p2, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static zza$1ed7098(Landroid/os/Parcel;ILjava/lang/Integer;)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public static zza$2cfb68bf(Landroid/os/Parcel;ILjava/lang/String;)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zza$2d7953c6(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v2

    array-length v3, p2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    :goto_d
    if-ge v0, v3, :cond_1d

    aget-object v4, p2, v0

    if-nez v4, :cond_19

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    invoke-static {p0, v4, p3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_16

    :cond_1d
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_3
.end method

.method public static zza$377a007(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zza$41b439c0(Landroid/os/Parcel;I[Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zza$52910762(Landroid/os/Parcel;I[B)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zza$529435fb(Landroid/os/Parcel;I[I)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zza$cdac282(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zza$f7bef55(Landroid/os/Parcel;ILandroid/os/Bundle;)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zzah(Landroid/os/Parcel;I)I
    .registers 3

    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    return v0
.end method

.method public static zzai(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v2, p1, -0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static zzb(Landroid/os/Parcel;II)V
    .registers 4

    const v0, 0xffff

    if-lt p2, v0, :cond_f

    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return-void

    :cond_f
    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e
.end method

.method public static zzb$62107c48(Landroid/os/Parcel;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_2
.end method

.method public static zzc(Landroid/os/Parcel;II)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zzc$62107c48(Landroid/os/Parcel;ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    :goto_10
    if-ge v1, v4, :cond_25

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-nez v0, :cond_21

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_21
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1d

    :cond_25
    invoke-static {p0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    goto :goto_3
.end method
