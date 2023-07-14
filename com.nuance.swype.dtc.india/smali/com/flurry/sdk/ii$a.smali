.class public final Lcom/flurry/sdk/ii$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz",
        "<",
        "Lcom/flurry/sdk/ii;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/ky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ky",
            "<",
            "Lcom/flurry/sdk/ij;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/ij$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ij$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    iput-object v0, p0, Lcom/flurry/sdk/ii$a;->a:Lcom/flurry/sdk/ky;

    .line 155
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    .line 1229
    if-nez p1, :cond_0

    .line 1230
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 1233
    :cond_0
    new-instance v18, Lcom/flurry/sdk/ii$a$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ii$a$2;-><init>(Lcom/flurry/sdk/ii$a;Ljava/io/InputStream;)V

    .line 1240
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 1241
    const-string/jumbo v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1242
    const/4 v5, 0x0

    .line 1245
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 1246
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 1247
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 1248
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 1249
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 1250
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1251
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/ip;->a(I)Lcom/flurry/sdk/ip;

    move-result-object v13

    .line 1253
    const/4 v14, 0x0

    .line 1254
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1256
    if-eqz v15, :cond_2

    .line 1257
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1259
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_2

    .line 1260
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1264
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    .line 1265
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1266
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1267
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    .line 1268
    const-string/jumbo v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1269
    const/16 v17, 0x0

    .line 1272
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    .line 1274
    new-instance v4, Lcom/flurry/sdk/ii;

    invoke-direct/range {v4 .. v17}, Lcom/flurry/sdk/ii;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/ip;Ljava/util/Map;IILjava/lang/String;)V

    .line 1277
    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;J)J

    .line 1278
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;Z)Z

    .line 2050
    move/from16 v0, v19

    iput v0, v4, Lcom/flurry/sdk/kp;->p:I

    .line 1281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/sdk/ii$a;->a:Lcom/flurry/sdk/ky;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/flurry/sdk/ky;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1282
    iput-object v5, v4, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    .line 1283
    invoke-virtual {v4}, Lcom/flurry/sdk/ii;->d()V

    goto/16 :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    check-cast p2, Lcom/flurry/sdk/ii;

    .line 2159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    new-instance v1, Lcom/flurry/sdk/ii$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ii$a$1;-><init>(Lcom/flurry/sdk/ii$a;Ljava/io/OutputStream;)V

    .line 2170
    invoke-static {p2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2171
    invoke-static {p2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3038
    :goto_1
    iget-object v0, p2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 2177
    if-eqz v0, :cond_3

    .line 4038
    iget-object v0, p2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 2178
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 5018
    :goto_2
    iget-wide v2, p2, Lcom/flurry/sdk/kp;->n:J

    .line 2184
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5026
    iget v0, p2, Lcom/flurry/sdk/kp;->p:I

    .line 2185
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2186
    invoke-static {p2}, Lcom/flurry/sdk/ii;->b(Lcom/flurry/sdk/ii;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2187
    invoke-static {p2}, Lcom/flurry/sdk/ii;->c(Lcom/flurry/sdk/ii;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2188
    invoke-static {p2}, Lcom/flurry/sdk/ii;->d(Lcom/flurry/sdk/ii;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2189
    invoke-static {p2}, Lcom/flurry/sdk/ii;->e(Lcom/flurry/sdk/ii;)Lcom/flurry/sdk/ip;

    move-result-object v0

    .line 5030
    iget v0, v0, Lcom/flurry/sdk/ip;->e:I

    .line 2189
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2191
    invoke-static {p2}, Lcom/flurry/sdk/ii;->f(Lcom/flurry/sdk/ii;)Ljava/util/Map;

    move-result-object v2

    .line 2192
    if-eqz v2, :cond_4

    .line 2193
    invoke-static {p2}, Lcom/flurry/sdk/ii;->f(Lcom/flurry/sdk/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2195
    invoke-static {p2}, Lcom/flurry/sdk/ii;->f(Lcom/flurry/sdk/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2196
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2198
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2201
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2202
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 2174
    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 2181
    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 2206
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2209
    :cond_5
    invoke-static {p2}, Lcom/flurry/sdk/ii;->g(Lcom/flurry/sdk/ii;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2210
    invoke-static {p2}, Lcom/flurry/sdk/ii;->h(Lcom/flurry/sdk/ii;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2211
    invoke-static {p2}, Lcom/flurry/sdk/ii;->i(Lcom/flurry/sdk/ii;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2213
    invoke-static {p2}, Lcom/flurry/sdk/ii;->j(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2214
    invoke-static {p2}, Lcom/flurry/sdk/ii;->j(Lcom/flurry/sdk/ii;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2220
    :goto_4
    invoke-static {p2}, Lcom/flurry/sdk/ii;->k(Lcom/flurry/sdk/ii;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2222
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 2224
    iget-object v0, p0, Lcom/flurry/sdk/ii$a;->a:Lcom/flurry/sdk/ky;

    iget-object v1, p2, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/ky;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto/16 :goto_0

    .line 2217
    :cond_6
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4
.end method
