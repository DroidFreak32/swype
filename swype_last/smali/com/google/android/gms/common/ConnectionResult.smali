.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final rb:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field public final mPendingIntent:Landroid/app/PendingIntent;

.field final mVersionCode:I

.field public final ok:I

.field final rc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->rb:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;B)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->rc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;B)V

    return-void
.end method

.method private constructor <init>(ILandroid/app/PendingIntent;B)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->rc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->rc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public final hasResolution()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->rc:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1000
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 0
    return v0
.end method

.method public final isSuccess()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v1

    const-string/jumbo v2, "statusCode"

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 2000
    sparse-switch v0, :sswitch_data_a8

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    :goto_29
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->rc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2000
    :sswitch_44
    const-string/jumbo v0, "SUCCESS"

    goto :goto_29

    :sswitch_48
    const-string/jumbo v0, "SERVICE_MISSING"

    goto :goto_29

    :sswitch_4c
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_29

    :sswitch_50
    const-string/jumbo v0, "SERVICE_DISABLED"

    goto :goto_29

    :sswitch_54
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    goto :goto_29

    :sswitch_58
    const-string/jumbo v0, "INVALID_ACCOUNT"

    goto :goto_29

    :sswitch_5c
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    goto :goto_29

    :sswitch_60
    const-string/jumbo v0, "NETWORK_ERROR"

    goto :goto_29

    :sswitch_64
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_29

    :sswitch_68
    const-string/jumbo v0, "SERVICE_INVALID"

    goto :goto_29

    :sswitch_6c
    const-string/jumbo v0, "DEVELOPER_ERROR"

    goto :goto_29

    :sswitch_70
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    goto :goto_29

    :sswitch_74
    const-string/jumbo v0, "CANCELED"

    goto :goto_29

    :sswitch_78
    const-string/jumbo v0, "TIMEOUT"

    goto :goto_29

    :sswitch_7c
    const-string/jumbo v0, "INTERRUPTED"

    goto :goto_29

    :sswitch_80
    const-string/jumbo v0, "API_UNAVAILABLE"

    goto :goto_29

    :sswitch_84
    const-string/jumbo v0, "SIGN_IN_FAILED"

    goto :goto_29

    :sswitch_88
    const-string/jumbo v0, "SERVICE_UPDATING"

    goto :goto_29

    :sswitch_8c
    const-string/jumbo v0, "SERVICE_MISSING_PERMISSION"

    goto :goto_29

    :sswitch_90
    const-string/jumbo v0, "RESTRICTED_PROFILE"

    goto :goto_29

    :sswitch_94
    const-string/jumbo v0, "API_VERSION_UPDATE_REQUIRED"

    goto :goto_29

    :sswitch_98
    const-string/jumbo v0, "UPDATE_ANDROID_WEAR"

    goto :goto_29

    :sswitch_9c
    const-string/jumbo v0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    goto :goto_29

    :sswitch_a0
    const-string/jumbo v0, "UNFINISHED"

    goto :goto_29

    :sswitch_a4
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_29

    :sswitch_data_a8
    .sparse-switch
        -0x1 -> :sswitch_a4
        0x0 -> :sswitch_44
        0x1 -> :sswitch_48
        0x2 -> :sswitch_4c
        0x3 -> :sswitch_50
        0x4 -> :sswitch_54
        0x5 -> :sswitch_58
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_60
        0x8 -> :sswitch_64
        0x9 -> :sswitch_68
        0xa -> :sswitch_6c
        0xb -> :sswitch_70
        0xd -> :sswitch_74
        0xe -> :sswitch_78
        0xf -> :sswitch_7c
        0x10 -> :sswitch_80
        0x11 -> :sswitch_84
        0x12 -> :sswitch_88
        0x13 -> :sswitch_8c
        0x14 -> :sswitch_90
        0x15 -> :sswitch_94
        0x2a -> :sswitch_98
        0x63 -> :sswitch_a0
        0x5dc -> :sswitch_9c
    .end sparse-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/zzb;->zza(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/Parcel;I)V

    return-void
.end method
