.class public Lorg/apache/james/mime4j/BodyDescriptor;
.super Ljava/lang/Object;
.source "BodyDescriptor.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/james/mime4j/BodyDescriptor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/james/mime4j/BodyDescriptor;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    .line 40
    const-string v0, "7bit"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    .line 43
    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    .line 44
    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    .line 60
    if-eqz p1, :cond_0

    const-string v0, "multipart/digest"

    iget-object v1, p1, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "message/rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p0, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v9, "result":Ljava/util/Map;
    const-string v11, ";"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 161
    move-object v5, p0

    .line 162
    .local v5, "main":Ljava/lang/String;
    const/4 v8, 0x0

    .line 168
    .local v8, "rest":Ljava/lang/String;
    :goto_0
    const-string v11, ""

    invoke-interface {v9, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    if-eqz v8, :cond_a

    .line 170
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 171
    .local v1, "chars":[C
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v6, "paramName":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v7, "paramValue":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 183
    .local v10, "state":B
    const/4 v2, 0x0

    .line 184
    .local v2, "escaped":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, v1

    if-ge v4, v11, :cond_9

    .line 185
    aget-char v0, v1, v4

    .line 187
    .local v0, "c":C
    sparse-switch v10, :sswitch_data_0

    .line 184
    :cond_0
    :goto_2
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 164
    .end local v0    # "c":C
    .end local v1    # "chars":[C
    .end local v2    # "escaped":Z
    .end local v4    # "i":I
    .end local v5    # "main":Ljava/lang/String;
    .end local v6    # "paramName":Ljava/lang/StringBuffer;
    .end local v7    # "paramValue":Ljava/lang/StringBuffer;
    .end local v8    # "rest":Ljava/lang/String;
    .end local v10    # "state":B
    :cond_1
    const/4 v11, 0x0

    const-string v12, ";"

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 165
    .restart local v5    # "main":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "rest":Ljava/lang/String;
    goto :goto_0

    .line 189
    .restart local v0    # "c":C
    .restart local v1    # "chars":[C
    .restart local v2    # "escaped":Z
    .restart local v4    # "i":I
    .restart local v6    # "paramName":Ljava/lang/StringBuffer;
    .restart local v7    # "paramValue":Ljava/lang/StringBuffer;
    .restart local v10    # "state":B
    :sswitch_1
    const/16 v11, 0x3b

    if-ne v0, v11, :cond_0

    .line 190
    const/4 v10, 0x0

    goto :goto_2

    .line 194
    :sswitch_2
    const/16 v11, 0x3d

    if-ne v0, v11, :cond_2

    .line 195
    sget-object v11, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Expected header param name, got \'=\'"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 196
    const/16 v10, 0x63

    .line 197
    goto :goto_2

    .line 200
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6    # "paramName":Ljava/lang/StringBuffer;
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .restart local v6    # "paramName":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v7    # "paramValue":Ljava/lang/StringBuffer;
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .restart local v7    # "paramValue":Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    .line 207
    :sswitch_3
    const/16 v11, 0x3d

    if-ne v0, v11, :cond_4

    .line 208
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 209
    const/16 v10, 0x63

    goto :goto_2

    .line 211
    :cond_3
    const/4 v10, 0x2

    .line 212
    goto :goto_2

    .line 216
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 220
    :sswitch_4
    const/4 v3, 0x0

    .line 221
    .local v3, "fallThrough":Z
    sparse-switch v0, :sswitch_data_1

    .line 231
    const/4 v10, 0x3

    .line 232
    const/4 v3, 0x1

    .line 235
    :goto_3
    :sswitch_5
    if-eqz v3, :cond_0

    .line 236
    .end local v3    # "fallThrough":Z
    :sswitch_6
    const/4 v3, 0x0

    .line 242
    .restart local v3    # "fallThrough":Z
    sparse-switch v0, :sswitch_data_2

    .line 253
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :goto_4
    if-eqz v3, :cond_0

    .line 257
    .end local v3    # "fallThrough":Z
    :sswitch_7
    sparse-switch v0, :sswitch_data_3

    .line 270
    const/16 v10, 0x63

    .line 271
    goto :goto_2

    .line 227
    .restart local v3    # "fallThrough":Z
    :sswitch_8
    const/4 v10, 0x4

    .line 228
    goto :goto_3

    .line 246
    :sswitch_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/4 v10, 0x5

    .line 250
    const/4 v3, 0x1

    .line 251
    goto :goto_4

    .line 262
    .end local v3    # "fallThrough":Z
    :sswitch_a
    const/4 v10, 0x0

    .line 263
    goto :goto_2

    .line 276
    :sswitch_b
    sparse-switch v0, :sswitch_data_4

    .line 298
    if-eqz v2, :cond_5

    .line 299
    const/16 v11, 0x5c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    :cond_5
    const/4 v2, 0x0

    .line 302
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 278
    :sswitch_c
    if-nez v2, :cond_6

    .line 280
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v10, 0x5

    goto/16 :goto_2

    .line 285
    :cond_6
    const/4 v2, 0x0

    .line 286
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 291
    :sswitch_d
    if-eqz v2, :cond_7

    .line 292
    const/16 v11, 0x5c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    :cond_7
    if-nez v2, :cond_8

    const/4 v2, 0x1

    .line 295
    :goto_5
    goto/16 :goto_2

    .line 294
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 311
    .end local v0    # "c":C
    :cond_9
    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    .line 312
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v1    # "chars":[C
    .end local v2    # "escaped":Z
    .end local v4    # "i":I
    .end local v6    # "paramName":Ljava/lang/StringBuffer;
    .end local v7    # "paramValue":Ljava/lang/StringBuffer;
    .end local v10    # "state":B
    :cond_a
    return-object v9

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_6
        0x4 -> :sswitch_b
        0x5 -> :sswitch_7
        0x63 -> :sswitch_1
    .end sparse-switch

    .line 221
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_8
    .end sparse-switch

    .line 242
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_9
        0x20 -> :sswitch_9
        0x3b -> :sswitch_9
    .end sparse-switch

    .line 257
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3b -> :sswitch_a
    .end sparse-switch

    .line 276
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public final addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 78
    const-string v10, "content-transfer-encoding"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    if-nez v10, :cond_1

    .line 79
    iput-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 83
    iput-object p2, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v10, "content-type"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    if-nez v10, :cond_0

    .line 87
    iput-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 94
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 96
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 97
    .local v1, "c":C
    const/16 v10, 0xd

    if-eq v1, v10, :cond_2

    const/16 v10, 0xa

    if-eq v1, v10, :cond_2

    .line 98
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/james/mime4j/BodyDescriptor;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 105
    .local v5, "params":Ljava/util/Map;
    const-string v10, ""

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, "main":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 108
    const/16 v10, 0x2f

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 109
    .local v3, "index":I
    const/4 v9, 0x0

    .line 110
    .local v9, "valid":Z
    const/4 v10, -0x1

    if-eq v3, v10, :cond_4

    .line 111
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "type":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "subtype":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 114
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    const/4 v9, 0x1

    .line 119
    .end local v7    # "subtype":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    .line 120
    const/4 v4, 0x0

    .line 123
    .end local v3    # "index":I
    .end local v9    # "valid":Z
    :cond_5
    const-string v10, "boundary"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "b":Ljava/lang/String;
    if-eqz v4, :cond_8

    const-string v10, "multipart/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v0, :cond_7

    :cond_6
    const-string v10, "multipart/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 129
    :cond_7
    iput-object v4, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 132
    :cond_8
    invoke-virtual {p0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 133
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    .line 136
    :cond_9
    const-string v10, "charset"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "c":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 147
    :cond_a
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 148
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, ""

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "boundary"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "charset"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public final getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final isBase64Encoded()Z
    .locals 2

    .prologue
    .line 396
    const-string v0, "base64"

    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isMessage()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isMultipart()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isQuotedPrintableEncoded()Z
    .locals 2

    .prologue
    .line 404
    const-string v0, "quoted-printable"

    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method
