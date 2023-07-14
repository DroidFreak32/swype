.class final Lcom/localytics/android/CircularRegion$1;
.super Ljava/lang/Object;
.source "CircularRegion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/CircularRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/localytics/android/CircularRegion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/CircularRegion;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 240
    new-instance v0, Lcom/localytics/android/CircularRegion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/localytics/android/CircularRegion;-><init>(Landroid/os/Parcel;Lcom/localytics/android/CircularRegion$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/localytics/android/CircularRegion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/CircularRegion;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/localytics/android/CircularRegion;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 245
    new-array v0, p1, [Lcom/localytics/android/CircularRegion;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/localytics/android/CircularRegion$1;->newArray(I)[Lcom/localytics/android/CircularRegion;

    move-result-object v0

    return-object v0
.end method
