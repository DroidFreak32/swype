.class public final Lcom/google/android/gms/gass/internal/GassResponseParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/gass/internal/GassResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field YX:Lcom/google/android/gms/internal/zzae$zza;

.field YY:[B

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/gass/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/gass/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->versionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    iput-object p2, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;->zzaww()V

    return-void
.end method

.method private zzaww()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/gass/internal/zzd;->zza$765441b7(Lcom/google/android/gms/gass/internal/GassResponseParcel;Landroid/os/Parcel;)V

    return-void
.end method

.method public final zzbld()Lcom/google/android/gms/internal/zzae$zza;
    .locals 3

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1000
    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    .line 3000
    new-instance v1, Lcom/google/android/gms/internal/zzae$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzae$zza;-><init>()V

    .line 4000
    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzapv;->zzb$16844d7a(Lcom/google/android/gms/internal/zzapv;[BI)Lcom/google/android/gms/internal/zzapv;

    move-result-object v0

    .line 3000
    check-cast v0, Lcom/google/android/gms/internal/zzae$zza;

    .line 1000
    iput-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzapu; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;->zzaww()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    return-object v0

    .line 2000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
