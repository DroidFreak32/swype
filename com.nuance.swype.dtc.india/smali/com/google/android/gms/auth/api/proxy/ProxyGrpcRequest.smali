.class public Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final body:[B

.field public final hostname:Ljava/lang/String;

.field public final method:Ljava/lang/String;

.field public final port:I

.field public final timeoutMillis:J

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/proxy/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/proxy/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IJ[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->hostname:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->port:I

    iput-wide p4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->timeoutMillis:J

    iput-object p6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->body:[B

    iput-object p7, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/proxy/zza;->zza$41bca3c(Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;Landroid/os/Parcel;)V

    return-void
.end method
