.class public Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private _datalist:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Data;",
            ">;"
        }
    .end annotation
.end field

.field private _deleteall:I

.field private _userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_deleteall:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_userId:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    .line 37
    return-void
.end method


# virtual methods
.method public addData(Lcom/nuance/nmdp/speechkit/util/dataupload/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public clearDataBlock()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 54
    return-void
.end method

.method public getChecksum()I
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "checksum":I
    const/4 v1, 0x0

    .line 106
    .local v1, "data":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    check-cast v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    .line 109
    .restart local v1    # "data":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->getChecksum()I

    move-result v3

    add-int/2addr v0, v3

    .line 106
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return v0
.end method

.method public getDataBlockDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 7

    .prologue
    .line 122
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 123
    .local v2, "dict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    const/4 v4, 0x0

    .line 125
    .local v4, "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    const-string v5, "delete_all"

    iget v6, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_deleteall:I

    invoke-virtual {v2, v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    .line 127
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_userId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 128
    const-string v5, "common_user_id"

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_userId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 132
    new-instance v4, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    .end local v4    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 135
    .restart local v4    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 138
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    .line 139
    .local v0, "d":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->getDataDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v1

    .line 143
    .local v1, "datadict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v4, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 147
    .end local v1    # "datadict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "d":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    :cond_2
    const-string v5, "data_list"

    invoke-virtual {v2, v5, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 155
    .end local v3    # "idx":I
    :cond_3
    return-object v2
.end method

.method public getDataList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    return-object v0
.end method

.method public removeData(Lcom/nuance/nmdp/speechkit/util/dataupload/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public setDeleteAll(Z)V
    .locals 1
    .param p1, "delete"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_deleteall:I

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_userId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 161
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v1, "datablock":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete_all:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_deleteall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checksum:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getChecksum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 168
    .local v3, "size":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "data_list: elements "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 172
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->_datalist:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    .line 173
    .local v0, "d":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    if-eqz v0, :cond_0

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "d":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    .end local v2    # "idx":I
    .end local v3    # "size":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
