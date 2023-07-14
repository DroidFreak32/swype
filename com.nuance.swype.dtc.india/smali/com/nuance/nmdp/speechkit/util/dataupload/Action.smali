.class public Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/dataupload/Action$1;,
        Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;
    }
.end annotation


# static fields
.field static final ADD_STR:Ljava/lang/String; = "add"

.field static final CLEAR_ALL_STR:Ljava/lang/String; = "clear_all"

.field static final REMOVE_STR:Ljava/lang/String; = "remove"


# instance fields
.field private _action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

.field private _contacts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private _words:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->CLEARALL:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-ne p1, v0, :cond_1

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    .line 64
    :goto_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    .line 66
    return-void

    .line 62
    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    goto :goto_0
.end method


# virtual methods
.method public addContact(Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public addWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public cleanData()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    .line 90
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 91
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 92
    return-void
.end method

.method public clearContacts()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 118
    return-void
.end method

.method public clearWords()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 145
    return-void
.end method

.method getActionDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 9

    .prologue
    .line 206
    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 207
    .local v3, "dict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 211
    .local v2, "content":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eqz v7, :cond_0

    .line 214
    sget-object v7, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$1;->$SwitchMap$com$nuance$nmdp$speechkit$util$dataupload$Action$ActionType:[I

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    invoke-virtual {v8}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 225
    :cond_0
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "add"

    invoke-virtual {v3, v7, v8}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 233
    new-instance v5, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 236
    .local v5, "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_1
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 238
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    .line 239
    .local v0, "c":Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->getContactDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v1

    .line 243
    .local v1, "cdict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v5, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 236
    .end local v1    # "cdict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    .end local v0    # "c":Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
    .end local v4    # "idx":I
    .end local v5    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :pswitch_0
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "add"

    invoke-virtual {v3, v7, v8}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_1
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "remove"

    invoke-virtual {v3, v7, v8}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_2
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "clear_all"

    invoke-virtual {v3, v7, v8}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .restart local v4    # "idx":I
    .restart local v5    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :cond_2
    const-string/jumbo v7, "list"

    invoke-virtual {v2, v7, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 275
    .end local v4    # "idx":I
    .end local v5    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :cond_3
    :goto_2
    const-string/jumbo v7, "content"

    invoke-virtual {v3, v7, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 280
    return-object v3

    .line 257
    :cond_4
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 259
    new-instance v5, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 261
    .restart local v5    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    const/4 v4, 0x0

    .restart local v4    # "idx":I
    :goto_3
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 263
    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 264
    .local v6, "w":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 266
    invoke-virtual {v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    .line 261
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 271
    .end local v6    # "w":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "list"

    invoke-virtual {v2, v7, v5}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_2

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getChecksum()I
    .locals 5

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 156
    .local v1, "checksum":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    .line 159
    .local v0, "c":Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->getCheckSum()I

    move-result v4

    add-int/2addr v1, v4

    .line 156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "c":Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 166
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "w":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 164
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v3    # "w":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method public removeContact(Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public removeWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public setType(Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    .prologue
    .line 74
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->CLEARALL:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-ne p1, v0, :cond_1

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    .local v0, "action":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_action:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 291
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 294
    .local v3, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "contact list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 297
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_contacts:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    .line 298
    .local v1, "c":Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
    if-eqz v1, :cond_0

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "contact: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "c":Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
    .end local v2    # "idx":I
    .end local v3    # "size":I
    :cond_1
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 309
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 312
    .restart local v3    # "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "word list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const/4 v2, 0x0

    .restart local v2    # "idx":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 315
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->_words:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "word":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "word: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    .end local v2    # "idx":I
    .end local v3    # "size":I
    .end local v4    # "word":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
