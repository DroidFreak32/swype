.class public final Lcom/facebook/share/model/SharePhoto;
.super Lcom/facebook/share/model/ShareMedia;
.source "SharePhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/SharePhoto$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final caption:Ljava/lang/String;

.field private final imageUrl:Landroid/net/Uri;

.field private final userGenerated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    new-instance v0, Lcom/facebook/share/model/SharePhoto$1;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/SharePhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Landroid/os/Parcel;)V

    .line 53
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_26
    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    .line 57
    return-void

    .line 55
    :cond_2f
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private constructor <init>(Lcom/facebook/share/model/SharePhoto$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/SharePhoto$Builder;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Lcom/facebook/share/model/ShareMedia$Builder;)V

    .line 45
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$000(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    .line 46
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$100(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    .line 47
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$200(Lcom/facebook/share/model/SharePhoto$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    .line 48
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$300(Lcom/facebook/share/model/SharePhoto$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/SharePhoto$Builder;Lcom/facebook/share/model/SharePhoto$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/SharePhoto$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/SharePhoto$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$Builder;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public final getMediaType()Lcom/facebook/share/model/ShareMedia$Type;
    .registers 2

    .prologue
    .line 124
    sget-object v0, Lcom/facebook/share/model/ShareMedia$Type;->PHOTO:Lcom/facebook/share/model/ShareMedia$Type;

    return-object v0
.end method

.method public final getUserGenerated()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareMedia;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    iget-object v1, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v1, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-boolean v1, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return-void
.end method
