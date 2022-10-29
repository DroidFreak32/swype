.class public final Lcom/facebook/share/model/SharePhoto$Builder;
.super Lcom/facebook/share/model/ShareMedia$Builder;
.source "SharePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/SharePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMedia$Builder",
        "<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcom/facebook/share/model/SharePhoto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private caption:Ljava/lang/String;

.field private imageUrl:Landroid/net/Uri;

.field private userGenerated:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/facebook/share/model/ShareMedia$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/SharePhoto$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto$Builder;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/SharePhoto$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;

    return-object v0
.end method

.method static readPhotoListFrom(Landroid/os/Parcel;)Ljava/util/List;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p0}, Lcom/facebook/share/model/SharePhoto$Builder;->readListFrom(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v3, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareMedia;

    .line 236
    .local v2, "medium":Lcom/facebook/share/model/ShareMedia;
    instance-of v4, v2, Lcom/facebook/share/model/SharePhoto;

    if-eqz v4, :cond_d

    .line 237
    check-cast v2, Lcom/facebook/share/model/SharePhoto;

    .end local v2    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 240
    :cond_23
    return-object v3
.end method

.method static writePhotoListTo(Landroid/os/Parcel;ILjava/util/List;)V
    .registers 6
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/facebook/share/model/ShareMedia;

    .line 222
    .local v0, "array":[Lcom/facebook/share/model/ShareMedia;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 223
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareMedia;

    aput-object v2, v0, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 225
    :cond_18
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 226
    return-void
.end method


# virtual methods
.method public final build()Lcom/facebook/share/model/SharePhoto;
    .registers 3

    .prologue
    .line 192
    new-instance v0, Lcom/facebook/share/model/SharePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$Builder;Lcom/facebook/share/model/SharePhoto$1;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    return-object v0
.end method

.method final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final getImageUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public final bridge synthetic readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareMedia;

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .end local p1    # "x0":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareModel;

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .end local p1    # "x0":Lcom/facebook/share/model/ShareModel;
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method final readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 209
    const-class v0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 197
    if-nez p1, :cond_3

    .line 200
    .end local p0    # "this":Lcom/facebook/share/model/SharePhoto$Builder;
    :goto_2
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/SharePhoto$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 143
    return-object p0
.end method

.method public final setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public final setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2
    .param p1, "imageUrl"    # Landroid/net/Uri;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    .line 154
    return-object p0
.end method

.method public final setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;
    .registers 2
    .param p1, "userGenerated"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z

    .line 165
    return-object p0
.end method
