.class public Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;
.super Ljava/lang/Object;
.source "Grammar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$1;,
        Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;
    }
.end annotation


# static fields
.field private static final CONTACTS_STR:Ljava/lang/String; = "contacts"

.field private static final CUSTOM_WORDS_STR:Ljava/lang/String; = "custom_words"

.field private static final HISTORY_STR:Ljava/lang/String; = "history"

.field private static final INSTANT_ITEM_LIST_STR:Ljava/lang/String; = "instant_item_list"

.field private static final PREDEFINED_STATIC_GRAMMARS_STR:Ljava/lang/String; = "predefined_static_grammars"

.field private static final URI_STR:Ljava/lang/String; = "uri"


# instance fields
.field private _checksum:I

.field private _id:Ljava/lang/String;

.field private _interURI:Ljava/lang/String;

.field private _itemList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _loadaslmh:Z

.field private _setLoadAsLmhFlag:Z

.field private _setTopicWeightFlag:Z

.field private _slotTag:Ljava/lang/String;

.field private _topicWeight:I

.field private _type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

.field private _uri:Ljava/lang/String;

.field private _userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setLoadAsLmhFlag:Z

    .line 54
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setTopicWeightFlag:Z

    .line 67
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_id:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->URI:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->PREDEFINED_STATIC_GRAMMARS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->INSTANT_ITEM_LIST:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-ne p1, v0, :cond_32

    .line 70
    :cond_22
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 73
    :goto_24
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->INSTANT_ITEM_LIST:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-ne v0, v1, :cond_31

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_itemList:Ljava/util/Vector;

    .line 75
    :cond_31
    return-void

    .line 72
    :cond_32
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    goto :goto_24
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;Ljava/lang/String;I)V
    .registers 5
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "checksum"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setLoadAsLmhFlag:Z

    .line 54
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setTopicWeightFlag:Z

    .line 85
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_id:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq p1, v0, :cond_16

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq p1, v0, :cond_16

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-ne p1, v0, :cond_1b

    .line 87
    :cond_16
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 90
    :goto_18
    iput p3, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_checksum:I

    .line 91
    return-void

    .line 89
    :cond_1b
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    goto :goto_18
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setLoadAsLmhFlag:Z

    .line 54
    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setTopicWeightFlag:Z

    .line 98
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->URI:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 99
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_id:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_uri:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_checksum:I

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setLoadAsLmhFlag:Z

    .line 54
    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setTopicWeightFlag:Z

    .line 109
    sget-object v2, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->INSTANT_ITEM_LIST:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 110
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_id:Ljava/lang/String;

    .line 111
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_itemList:Ljava/util/Vector;

    .line 113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "item":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 115
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_itemList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 117
    .end local v1    # "item":Ljava/lang/String;
    :cond_2d
    return-void
.end method


# virtual methods
.method public getGrammarDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .registers 7

    .prologue
    .line 220
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 223
    .local v0, "dict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    const-string/jumbo v4, "id"

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->getTypeStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v5, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->PREDEFINED_STATIC_GRAMMARS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-ne v4, v5, :cond_1e

    .line 260
    :cond_1d
    :goto_1d
    return-object v0

    .line 229
    :cond_1e
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v5, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq v4, v5, :cond_30

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v5, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-eq v4, v5, :cond_30

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v5, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-ne v4, v5, :cond_7c

    .line 230
    :cond_30
    const-string/jumbo v4, "checksum"

    iget v5, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_checksum:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_userId:Ljava/lang/String;

    if-eqz v4, :cond_48

    .line 232
    const-string/jumbo v4, "common_user_id"

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_userId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_48
    :goto_48
    iget-boolean v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setLoadAsLmhFlag:Z

    if-eqz v4, :cond_57

    .line 252
    const-string/jumbo v5, "load_as_lmh"

    iget-boolean v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_loadaslmh:Z

    if-eqz v4, :cond_be

    const/4 v4, 0x1

    :goto_54
    invoke-virtual {v0, v5, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    .line 253
    :cond_57
    iget-boolean v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setTopicWeightFlag:Z

    if-eqz v4, :cond_63

    .line 254
    const-string/jumbo v4, "topic_weight"

    iget v5, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_topicWeight:I

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    .line 255
    :cond_63
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_slotTag:Ljava/lang/String;

    if-eqz v4, :cond_6f

    .line 256
    const-string/jumbo v4, "slot_tag"

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_slotTag:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_6f
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_interURI:Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 258
    const-string/jumbo v4, "interpretation_uri"

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_interURI:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 234
    :cond_7c
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v5, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->URI:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-ne v4, v5, :cond_8b

    .line 235
    const-string/jumbo v4, "uri"

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 237
    :cond_8b
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v5, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->INSTANT_ITEM_LIST:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-ne v4, v5, :cond_48

    .line 238
    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 239
    .local v3, "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_itemList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b7

    .line 241
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_9f
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_itemList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_b7

    .line 243
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_itemList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    .local v2, "item":Ljava/lang/String;
    if-eqz v2, :cond_b4

    .line 245
    invoke-virtual {v3, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    .line 241
    :cond_b4
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    .line 248
    .end local v1    # "idx":I
    .end local v2    # "item":Ljava/lang/String;
    :cond_b7
    const-string/jumbo v4, "item_list"

    invoke-virtual {v0, v4, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_48

    .line 252
    .end local v3    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :cond_be
    const/4 v4, 0x0

    goto :goto_54
.end method

.method public getTypeStr()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    if-nez v0, :cond_8

    .line 128
    const-string/jumbo v0, "contacts"

    .line 144
    :goto_7
    return-object v0

    .line 130
    :cond_8
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$1;->$SwitchMap$com$nuance$nmdp$speechkit$util$grammar$Grammar$GrammarType:[I

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_type:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 144
    const-string/jumbo v0, "contacts"

    goto :goto_7

    .line 132
    :pswitch_19
    const-string/jumbo v0, "contacts"

    goto :goto_7

    .line 134
    :pswitch_1d
    const-string/jumbo v0, "custom_words"

    goto :goto_7

    .line 136
    :pswitch_21
    const-string/jumbo v0, "history"

    goto :goto_7

    .line 138
    :pswitch_25
    const-string/jumbo v0, "uri"

    goto :goto_7

    .line 140
    :pswitch_29
    const-string/jumbo v0, "predefined_static_grammars"

    goto :goto_7

    .line 142
    :pswitch_2d
    const-string/jumbo v0, "instant_item_list"

    goto :goto_7

    .line 130
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method setChecksum(I)V
    .registers 2
    .param p1, "checksum"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_checksum:I

    .line 203
    return-void
.end method

.method public setInterUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_interURI:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setLoadAsLmh(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setLoadAsLmhFlag:Z

    .line 164
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_loadaslmh:Z

    .line 165
    return-void
.end method

.method public setSlotTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_slotTag:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setTopicWeight(I)V
    .registers 3
    .param p1, "weight"    # I

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_setTopicWeightFlag:Z

    .line 174
    iput p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_topicWeight:I

    .line 175
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_uri:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->_userId:Ljava/lang/String;

    .line 212
    return-void
.end method
