.class final Lcom/nuance/connect/common/ServiceInitializationConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/nuance/connect/common/ServiceInitializationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nuance/connect/common/ServiceInitializationConfig;-><init>(Landroid/os/Parcel;Lcom/nuance/connect/common/ServiceInitializationConfig$1;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/nuance/connect/common/ServiceInitializationConfig;

    return-object v0
.end method
