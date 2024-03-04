.class public Lcom/nuance/input/swypecorelib/TextModel;
.super Ljava/lang/Object;
.source "TextModel.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/ITextModel;


# static fields
.field private static final MAX_CHARS:I = 0x100

.field public static final MAX_REGIONS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TextModel"


# instance fields
.field private buffer:Ljava/lang/String;

.field private delims:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private regions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/input/swypecorelib/TextRegion;",
            ">;"
        }
    .end annotation
.end field

.field private selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "delims":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    .line 53
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/TextModel;->delims:Ljava/util/Set;

    .line 54
    return-void
.end method

.method private createUpdateResult(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;
    .locals 2
    .param p1, "oldRegion"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "newRegion"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p3, "newBuffer"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextModel;->buffer:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;-><init>(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v0, "res":Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;
    iput-object p3, p0, Lcom/nuance/input/swypecorelib/TextModel;->buffer:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/TextModel;->selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    .line 230
    return-object v0
.end method


# virtual methods
.method public adjust(IILjava/lang/String;)V
    .locals 3
    .param p1, "changePos"    # I
    .param p2, "changeLen"    # I
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/TextRegion;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/TextRegion;

    .line 147
    .local v1, "region":Lcom/nuance/input/swypecorelib/TextRegion;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 148
    invoke-virtual {v1, p2}, Lcom/nuance/input/swypecorelib/TextRegion;->move(I)V

    goto :goto_0

    .line 151
    .end local v1    # "region":Lcom/nuance/input/swypecorelib/TextRegion;
    :cond_1
    iput-object p3, p0, Lcom/nuance/input/swypecorelib/TextModel;->buffer:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public extractString(Lcom/nuance/input/swypecorelib/TextRegion;)Ljava/lang/String;
    .locals 3
    .param p1, "region"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    add-int v0, v1, v2

    .line 187
    .local v0, "end":I
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextModel;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 192
    :goto_0
    return-object v1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextModel;->buffer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->buffer:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->buffer:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 62
    return-void
.end method

.method public search(I)Lcom/nuance/input/swypecorelib/TextRegion;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 165
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/TextRegion;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/TextRegion;

    .line 169
    .local v1, "region":Lcom/nuance/input/swypecorelib/TextRegion;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v2

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p1, :cond_0

    .line 174
    .end local v1    # "region":Lcom/nuance/input/swypecorelib/TextRegion;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDelims(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "delims":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/TextModel;->delims:Ljava/util/Set;

    .line 212
    return-void
.end method

.method public update(Ljava/lang/String;I)Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;
    .locals 11
    .param p1, "newValue"    # Ljava/lang/String;
    .param p2, "curPos"    # I

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v0, "TextModel"

    const-string v1, "update(): new value is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 129
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 86
    .local v2, "singleChars":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextModel;->delims:Ljava/util/Set;

    const/16 v5, 0x100

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;II)V

    .line 89
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->extractTextRegion()Lcom/nuance/input/swypecorelib/TextRegion;

    move-result-object v8

    .line 90
    .local v8, "region":Lcom/nuance/input/swypecorelib/TextRegion;
    if-nez v8, :cond_1

    .line 91
    const-string v0, "TextModel"

    const-string v1, "update(): extracted region is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 92
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    invoke-static {v0, v8}, Lcom/nuance/input/swypecorelib/TextRegion;->hasSameString(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v0

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v1

    if-ne v0, v1, :cond_2

    move-object v0, v9

    .line 99
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/input/swypecorelib/TextRegion;

    .line 105
    .local v7, "prevRegion":Lcom/nuance/input/swypecorelib/TextRegion;
    invoke-static {v7, v8}, Lcom/nuance/input/swypecorelib/TextRegion;->hasSameString(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v0

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 108
    iput-object v7, p0, Lcom/nuance/input/swypecorelib/TextModel;->selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    .line 111
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v10, :cond_4

    .line 114
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_4
    move-object v0, v9

    .line 116
    goto :goto_0

    .line 122
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "prevRegion":Lcom/nuance/input/swypecorelib/TextRegion;
    :cond_5
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v10, :cond_6

    .line 125
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->regions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextModel;->selectPrevRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    invoke-direct {p0, v0, v8, p1}, Lcom/nuance/input/swypecorelib/TextModel;->createUpdateResult(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;

    move-result-object v0

    goto/16 :goto_0
.end method
