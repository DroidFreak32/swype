.class final Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;
.super Ljava/lang/Object;
.source "KatanaProxyLoginMethodHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/KatanaProxyLoginMethodHandler;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 85
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/facebook/login/KatanaProxyLoginMethodHandler;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 90
    new-array v0, p1, [Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;->newArray(I)[Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method
