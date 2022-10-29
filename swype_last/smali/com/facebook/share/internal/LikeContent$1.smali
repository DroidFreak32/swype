.class final Lcom/facebook/share/internal/LikeContent$1;
.super Ljava/lang/Object;
.source "LikeContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeContent;
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
        "Lcom/facebook/share/internal/LikeContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/LikeContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    new-instance v0, Lcom/facebook/share/internal/LikeContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/LikeContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/facebook/share/internal/LikeContent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Lcom/facebook/share/internal/LikeContent;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeContent$1;->newArray(I)[Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    return-object v0
.end method
