.class public Ltwitter4j/internal/org/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 174
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 175
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    const-string v3, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "aCollection":Ljava/lang/Object;
    iget-object v2, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v0    # "aCollection":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    .locals 3
    .param p1, "x"    # Ltwitter4j/internal/org/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5d

    .line 105
    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 106
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 107
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    if-eq v0, v2, :cond_2

    .line 110
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 112
    :goto_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 113
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 114
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 130
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    .line 117
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :sswitch_0
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v2, :cond_3

    .line 134
    :cond_2
    :sswitch_1
    return-void

    .line 125
    :cond_3
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 194
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 218
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return v1

    .line 215
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 220
    :cond_3
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    .line 278
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v1, :cond_0

    .line 294
    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    .line 296
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 342
    sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v1

    .line 357
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 360
    if-lez v0, :cond_0

    .line 361
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    iget-object v3, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public length()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 387
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public put(I)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 422
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 423
    return-object p0
.end method

.method public put(ID)Ltwitter4j/internal/org/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 511
    return-object p0
.end method

.method public put(II)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 527
    return-object p0
.end method

.method public put(IJ)Ltwitter4j/internal/org/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 543
    return-object p0
.end method

.method public put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 578
    if-gez p1, :cond_0

    .line 579
    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONArray["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 582
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 589
    :goto_0
    return-object p0

    .line 584
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 585
    sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_1

    .line 587
    :cond_2
    invoke-virtual {p0, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 494
    return-object p0
.end method

.method public put(ILjava/util/Map;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 559
    return-object p0
.end method

.method public put(IZ)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 477
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 478
    return-object p0

    .line 477
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 434
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 435
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 461
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    return-object p0
.end method

.method public put(Ljava/util/Collection;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Collection;

    .prologue
    .line 411
    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 412
    return-object p0
.end method

.method public put(Ljava/util/Map;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Map;

    .prologue
    .line 447
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 448
    return-object p0
.end method

.method public put(Z)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 398
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 399
    return-object p0

    .line 398
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ltwitter4j/internal/org/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 607
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "indentFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 8
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xa

    .line 641
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    .line 642
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 643
    const-string v5, "[]"

    .line 669
    :goto_0
    return-object v5

    .line 646
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 648
    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :cond_1
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 651
    :cond_2
    add-int v3, p2, p1

    .line 652
    .local v3, "newindent":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 654
    if-lez v0, :cond_3

    .line 655
    const-string v5, ",\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 658
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 660
    :cond_4
    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    .end local v1    # "j":I
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_1

    .line 665
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "b":Z
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    .line 687
    .local v3, "len":I
    const/16 v5, 0x5b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 690
    if-eqz v0, :cond_0

    .line 691
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 693
    :cond_0
    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 694
    .local v4, "v":Ljava/lang/Object;
    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v5, :cond_1

    .line 695
    check-cast v4, Ltwitter4j/internal/org/json/JSONObject;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 701
    :goto_1
    const/4 v0, 0x1

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v5, :cond_2

    .line 697
    check-cast v4, Ltwitter4j/internal/org/json/JSONArray;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 705
    .end local v2    # "i":I
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ltwitter4j/internal/org/json/JSONException;

    invoke-direct {v5, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 699
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 703
    .end local v4    # "v":Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 704
    return-object p1
.end method
