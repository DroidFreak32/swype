.class public abstract Lcom/facebook/share/model/ShareMedia$Builder;
.super Ljava/lang/Object;
.source "ShareMedia.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/facebook/share/model/ShareMedia;",
        "B:",
        "Lcom/facebook/share/model/ShareMedia$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<TM;TB;>;"
    }
.end annotation


# instance fields
.field private params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lcom/facebook/share/model/ShareMedia$Builder;, "Lcom/facebook/share/model/ShareMedia$Builder<TM;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMedia$Builder;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMedia$Builder;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method static readListFrom(Landroid/os/Parcel;)Ljava/util/List;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const-class v6, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 116
    .local v4, "parcelables":[Landroid/os/Parcelable;
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v5, "shareMedia":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v2, v4

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_13
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    .line 118
    .local v3, "parcelable":Landroid/os/Parcelable;
    check-cast v3, Lcom/facebook/share/model/ShareMedia;

    .end local v3    # "parcelable":Landroid/os/Parcelable;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 120
    :cond_1f
    return-object v5
.end method

.method static writeListTo(Landroid/os/Parcel;ILjava/util/List;)V
    .registers 4
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMedia;

    check-cast v0, [Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 111
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TB;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/facebook/share/model/ShareMedia$Builder;, "Lcom/facebook/share/model/ShareMedia$Builder<TM;TB;>;"
    .local p1, "model":Lcom/facebook/share/model/ShareMedia;, "TM;"
    if-nez p1, :cond_3

    .line 103
    .end local p0    # "this":Lcom/facebook/share/model/ShareMedia$Builder;, "Lcom/facebook/share/model/ShareMedia$Builder<TM;TB;>;"
    :goto_2
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/ShareMedia$Builder;, "Lcom/facebook/share/model/ShareMedia$Builder<TM;TB;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMedia;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMedia$Builder;->setParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareModel;

    .prologue
    .line 76
    .local p0, "this":Lcom/facebook/share/model/ShareMedia$Builder;, "Lcom/facebook/share/model/ShareMedia$Builder<TM;TB;>;"
    check-cast p1, Lcom/facebook/share/model/ShareMedia;

    .end local p1    # "x0":Lcom/facebook/share/model/ShareModel;
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareMedia$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/facebook/share/model/ShareMedia$Builder;, "Lcom/facebook/share/model/ShareMedia$Builder<TM;TB;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object p0
.end method

.method public setParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareMedia$Builder;
    .registers 3
    .param p1, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/facebook/share/model/ShareMedia$Builder;, "Lcom/facebook/share/model/ShareMedia$Builder<TM;TB;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 95
    return-object p0
.end method
