.class public final Lcom/facebook/share/model/ShareLinkContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareLinkContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "Lcom/facebook/share/model/ShareLinkContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private imageUrl:Landroid/net/Uri;

.field private quote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareLinkContent$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/facebook/share/model/ShareLinkContent;
    .registers 3

    .prologue
    .line 170
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Lcom/facebook/share/model/ShareLinkContent$Builder;Lcom/facebook/share/model/ShareLinkContent$1;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 120
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .end local p1    # "x0":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareLinkContent;

    .prologue
    .line 175
    if-nez p1, :cond_3

    .line 178
    .end local p0    # "this":Lcom/facebook/share/model/ShareLinkContent$Builder;
    :goto_2
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/ShareLinkContent$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public final bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareModel;

    .prologue
    .line 120
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .end local p1    # "x0":Lcom/facebook/share/model/ShareModel;
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public final setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 2
    .param p1, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public final setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 2
    .param p1, "imageUrl"    # Landroid/net/Uri;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    .line 155
    return-object p0
.end method

.method public final setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 2
    .param p1, "quote"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    .line 165
    return-object p0
.end method
