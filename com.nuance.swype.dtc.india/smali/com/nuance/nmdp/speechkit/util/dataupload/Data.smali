.class public Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/dataupload/Data$1;,
        Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;
    }
.end annotation


# static fields
.field static final CONTACTS_STR:Ljava/lang/String; = "contacts"

.field static final CUSTOM_WORDS_STR:Ljava/lang/String; = "custom_words"

.field static final HISTORY_STR:Ljava/lang/String; = "history"


# instance fields
.field private _actions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Action;",
            ">;"
        }
    .end annotation
.end field

.field private _checksum:I

.field private _id:Ljava/lang/String;

.field private _type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_id:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_checksum:I

    .line 63
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-ne p2, v0, :cond_1

    .line 65
    :cond_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .line 71
    :goto_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    .line 72
    return-void

    .line 69
    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    goto :goto_0
.end method


# virtual methods
.method public addAction(Lcom/nuance/nmdp/speechkit/util/dataupload/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public clearActions()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 165
    return-void
.end method

.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_id:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_checksum:I

    .line 81
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .line 82
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 83
    return-void
.end method

.method public getChecksum()I
    .locals 4

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 111
    .local v1, "checksum":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    .line 114
    .local v0, "a":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->getChecksum()I

    move-result v3

    add-int/2addr v1, v3

    .line 111
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "a":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    :cond_1
    iput v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_checksum:I

    return v1
.end method

.method getDataDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 7

    .prologue
    .line 196
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 199
    .local v2, "dict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    const-string/jumbo v5, "id"

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eqz v5, :cond_0

    .line 204
    sget-object v5, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$1;->$SwitchMap$com$nuance$nmdp$speechkit$util$dataupload$Data$DataType:[I

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-virtual {v6}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 215
    :cond_0
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "contacts"

    invoke-virtual {v2, v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 223
    new-instance v4, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 225
    .local v4, "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 227
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    .line 228
    .local v0, "act":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->getActionDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v1

    .line 232
    .local v1, "actiondict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v4, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 225
    .end local v1    # "actiondict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "act":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    .end local v3    # "idx":I
    .end local v4    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :pswitch_0
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "contacts"

    invoke-virtual {v2, v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_1
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "custom_words"

    invoke-virtual {v2, v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "history"

    invoke-virtual {v2, v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .restart local v3    # "idx":I
    .restart local v4    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :cond_2
    const-string/jumbo v5, "actions"

    invoke-virtual {v2, v5, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 245
    .end local v3    # "idx":I
    .end local v4    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :cond_3
    return-object v2

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-nez v0, :cond_0

    .line 145
    const-string/jumbo v0, "contacts"

    .line 155
    :goto_0
    return-object v0

    .line 147
    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$1;->$SwitchMap$com$nuance$nmdp$speechkit$util$dataupload$Data$DataType:[I

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    const-string/jumbo v0, "contacts"

    goto :goto_0

    .line 149
    :pswitch_0
    const-string/jumbo v0, "contacts"

    goto :goto_0

    .line 151
    :pswitch_1
    const-string/jumbo v0, "custom_words"

    goto :goto_0

    .line 153
    :pswitch_2
    const-string/jumbo v0, "history"

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeAction(Lcom/nuance/nmdp/speechkit/util/dataupload/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    return-void
.end method

.method setChecksum(I)V
    .locals 0
    .param p1, "checksum"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_checksum:I

    .line 100
    return-void
.end method

.method public setType(Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .prologue
    .line 128
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-ne p1, v0, :cond_1

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 250
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    .local v1, "data":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checksum:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_checksum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_type:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 261
    .local v3, "size":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "action list: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 264
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->_actions:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    .line 265
    .local v0, "act":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    if-eqz v0, :cond_0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "act":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    .end local v2    # "idx":I
    .end local v3    # "size":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
