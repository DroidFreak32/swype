.class public final Lcom/google/android/gms/auth/api/credentials/IdToken;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final cM:Ljava/lang/String;

.field final cY:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/IdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzb;->zzfm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    const-string/jumbo v1, "id token string cannot be null or empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->cM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->cY:Ljava/lang/String;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/credentials/zze;->zza$209b9bb7(Lcom/google/android/gms/auth/api/credentials/IdToken;Landroid/os/Parcel;)V

    return-void
.end method
