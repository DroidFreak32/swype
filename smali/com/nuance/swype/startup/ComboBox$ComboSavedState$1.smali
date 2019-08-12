.class final Lcom/nuance/swype/startup/ComboBox$ComboSavedState$1;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ComboBox$ComboSavedState;
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
        "Lcom/nuance/swype/startup/ComboBox$ComboSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 572
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 572
    new-array v0, p1, [Lcom/nuance/swype/startup/ComboBox$ComboSavedState;

    return-object v0
.end method
