.class public final Lcom/google/android/gms/clearcut/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/clearcut/LogEventParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V
    .registers 9

    .prologue
    .line 0
    .line 1000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v1

    .line 0
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {p1, v0, v2, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$377a007(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qv:[B

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$52910762(Landroid/os/Parcel;I[B)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qw:[I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$529435fb(Landroid/os/Parcel;I[I)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qx:[Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$41b439c0(Landroid/os/Parcel;I[Ljava/lang/String;)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qy:[I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$529435fb(Landroid/os/Parcel;I[I)V

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qz:[[B

    .line 2000
    if-eqz v2, :cond_45

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v3

    array-length v4, v2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_38
    if-ge v0, v4, :cond_42

    aget-object v5, v2, v0

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_42
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    .line 0
    :cond_45
    const/16 v0, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qA:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    .line 3000
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 16

    .prologue
    .line 0
    .line 5000
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcm(Landroid/os/Parcel;)I

    move-result v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v9, :cond_6d

    .line 6000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7000
    const v10, 0xffff

    and-int/2addr v10, v0

    .line 5000
    packed-switch v10, :pswitch_data_96

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_c

    :pswitch_26
    sget-object v2, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->CREATOR:Lcom/google/android/gms/playlog/internal/zza;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-object v2, v0

    goto :goto_c

    :pswitch_30
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v3

    goto :goto_c

    :pswitch_35
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzw(Landroid/os/Parcel;I)[I

    move-result-object v4

    goto :goto_c

    :pswitch_3a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzac(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :pswitch_3f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzw(Landroid/os/Parcel;I)[I

    move-result-object v6

    goto :goto_c

    .line 8000
    :pswitch_44
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;I)I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-nez v10, :cond_50

    const/4 v7, 0x0

    goto :goto_c

    :cond_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    new-array v7, v12, [[B

    const/4 v0, 0x0

    :goto_57
    if-ge v0, v12, :cond_62

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    aput-object v13, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_62
    add-int v0, v11, v10

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_c

    .line 5000
    :pswitch_68
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_c

    :cond_6d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v9, :cond_8f

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_8f
    new-instance v0, Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B[I[Ljava/lang/String;[I[[BZ)V

    .line 0
    return-object v0

    .line 5000
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_21
        :pswitch_26
        :pswitch_30
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
        :pswitch_44
        :pswitch_68
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 4000
    new-array v0, p1, [Lcom/google/android/gms/clearcut/LogEventParcelable;

    .line 0
    return-object v0
.end method
