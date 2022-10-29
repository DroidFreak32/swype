.class final Lcom/nuance/android/compat/CorrectionSpan$1;
.super Ljava/lang/Object;
.source "CorrectionSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/CorrectionSpan;
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
        "Lcom/nuance/android/compat/CorrectionSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nuance/android/compat/CorrectionSpan;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 285
    new-instance v0, Lcom/nuance/android/compat/CorrectionSpan;

    invoke-direct {v0, p1}, Lcom/nuance/android/compat/CorrectionSpan;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/nuance/android/compat/CorrectionSpan$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nuance/android/compat/CorrectionSpan;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/nuance/android/compat/CorrectionSpan;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 290
    new-array v0, p1, [Lcom/nuance/android/compat/CorrectionSpan;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/nuance/android/compat/CorrectionSpan$1;->newArray(I)[Lcom/nuance/android/compat/CorrectionSpan;

    move-result-object v0

    return-object v0
.end method
