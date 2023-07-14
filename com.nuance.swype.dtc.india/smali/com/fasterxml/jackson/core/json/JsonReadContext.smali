.class public final Lcom/fasterxml/jackson/core/json/JsonReadContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field protected _child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _lineNr:I

.field protected final _parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;III)V
    .locals 1
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .param p2, "type"    # I
    .param p3, "lineNr"    # I
    .param p4, "colNr"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 45
    iput p2, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 47
    iput p3, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I

    .line 48
    iput p4, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    .line 50
    return-void
.end method

.method private reset(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lineNr"    # I
    .param p3, "colNr"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    .line 56
    iput p2, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I

    .line 57
    iput p3, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 76
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    invoke-direct {v0, p0, v2, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;III)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-object v1, v0

    .line 81
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .local v1, "ctxt":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 80
    .end local v1    # "ctxt":Ljava/lang/Object;
    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    :cond_0
    invoke-direct {v0, v2, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 81
    .restart local v1    # "ctxt":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x2

    .line 86
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 87
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    invoke-direct {v0, p0, v2, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;III)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-object v1, v0

    .line 92
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .local v1, "ctxt":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 91
    .end local v1    # "ctxt":Ljava/lang/Object;
    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    :cond_0
    invoke-direct {v0, v2, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 92
    .restart local v1    # "ctxt":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final expectComma()Z
    .locals 2

    .prologue
    .line 139
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    .line 140
    .local v0, "ix":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    return-object v0
.end method

.method public final getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 6
    .param p1, "srcRef"    # Ljava/lang/Object;

    .prologue
    .line 124
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    const-wide/16 v2, -0x1

    iget v4, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final setCurrentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 183
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    :pswitch_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
