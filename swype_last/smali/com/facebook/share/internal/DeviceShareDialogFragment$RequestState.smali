.class Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expiresIn:J

.field private userCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 279
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    .line 265
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public getExpiresIn()J
    .registers 3

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    return-wide v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiresIn(J)V
    .registers 4
    .param p1, "expiresIn"    # J

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    .line 259
    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "userCode"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    return-void
.end method
