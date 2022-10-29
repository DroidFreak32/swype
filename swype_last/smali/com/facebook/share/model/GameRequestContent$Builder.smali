.class public Lcom/facebook/share/model/GameRequestContent$Builder;
.super Ljava/lang/Object;
.source "GameRequestContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/model/GameRequestContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

.field private data:Ljava/lang/String;

.field private filters:Lcom/facebook/share/model/GameRequestContent$Filters;

.field private message:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->recipients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/GameRequestContent$Builder;)Lcom/facebook/share/model/GameRequestContent$ActionType;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/share/model/GameRequestContent$Builder;)Lcom/facebook/share/model/GameRequestContent$Filters;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/GameRequestContent$Builder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->suggestions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/GameRequestContent;
    .registers 3

    .prologue
    .line 287
    new-instance v0, Lcom/facebook/share/model/GameRequestContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/GameRequestContent;-><init>(Lcom/facebook/share/model/GameRequestContent$Builder;Lcom/facebook/share/model/GameRequestContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 307
    const-class v0, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->readFrom(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 292
    if-nez p1, :cond_3

    .line 295
    .end local p0    # "this":Lcom/facebook/share/model/GameRequestContent$Builder;
    :goto_2
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/GameRequestContent$Builder;
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setSuggestions(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareModel;

    .prologue
    .line 173
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    .end local p1    # "x0":Lcom/facebook/share/model/ShareModel;
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->readFrom(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .param p1, "actionType"    # Lcom/facebook/share/model/GameRequestContent$ActionType;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    .line 257
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->data:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .param p1, "filters"    # Lcom/facebook/share/model/GameRequestContent$Filters;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    .line 274
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->message:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->objectId:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/GameRequestContent$Builder;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->recipients:Ljava/util/List;

    .line 226
    return-object p0
.end method

.method public setSuggestions(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/GameRequestContent$Builder;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->suggestions:Ljava/util/List;

    .line 282
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->title:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 4
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p1, :cond_f

    .line 207
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "recipientsArray":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->recipients:Ljava/util/List;

    .line 211
    .end local v0    # "recipientsArray":[Ljava/lang/String;
    :cond_f
    return-object p0
.end method
