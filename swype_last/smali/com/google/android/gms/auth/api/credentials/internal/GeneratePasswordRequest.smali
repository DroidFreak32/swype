.class public final Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final cG:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/api/credentials/PasswordSpecification;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->cG:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzi;->zza(Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;Landroid/os/Parcel;I)V

    return-void
.end method
