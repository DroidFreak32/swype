.class public final Lcom/google/android/gms/gass/internal/GassRequestParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/gass/internal/GassRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final YW:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/gass/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/gass/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/gass/internal/GassRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gass/internal/GassRequestParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/gass/internal/GassRequestParcel;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/gass/internal/GassRequestParcel;->YW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/gass/internal/GassRequestParcel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/gass/internal/zzc;->zza$58e5bb83(Lcom/google/android/gms/gass/internal/GassRequestParcel;Landroid/os/Parcel;)V

    return-void
.end method
