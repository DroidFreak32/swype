.class public abstract Lcom/facebook/share/model/ShareContent$Builder;
.super Ljava/lang/Object;
.source "ShareContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareContent;",
        "E:",
        "Lcom/facebook/share/model/ShareContent$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<TP;TE;>;"
    }
.end annotation


# instance fields
.field private contentUrl:Landroid/net/Uri;

.field private hashtag:Lcom/facebook/share/model/ShareHashtag;

.field private peopleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placeId:Ljava/lang/String;

.field private ref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 139
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareContent$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->contentUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->peopleIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->ref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareContent$Builder;)Lcom/facebook/share/model/ShareHashtag;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareContent$Builder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    return-object v0
.end method


# virtual methods
.method public readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TE;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    .local p1, "content":Lcom/facebook/share/model/ShareContent;, "TP;"
    if-nez p1, :cond_3

    .line 208
    .end local p0    # "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    :goto_2
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareModel;

    .prologue
    .line 139
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    .end local p1    # "x0":Lcom/facebook/share/model/ShareModel;
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2
    .param p1, "contentUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->contentUrl:Landroid/net/Uri;

    .line 155
    return-object p0
.end method

.method public setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    .local p1, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->peopleIds:Ljava/util/List;

    .line 166
    return-object p0

    .line 165
    :cond_6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2
    .param p1, "placeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->placeId:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2
    .param p1, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->ref:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2
    .param p1, "shareHashtag"    # Lcom/facebook/share/model/ShareHashtag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareHashtag;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/facebook/share/model/ShareContent$Builder;, "Lcom/facebook/share/model/ShareContent$Builder<TP;TE;>;"
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    .line 200
    return-object p0
.end method
