.class public Lcom/flurry/sdk/iy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iy$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/iy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/iy;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/iy;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/iz;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v3, 0x0

    .line 97
    :try_start_5
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_225
    .catchall {:try_start_5 .. :try_end_f} :catchall_221

    .line 100
    const/4 v2, 0x7

    :try_start_10
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1047
    iget-object v2, p1, Lcom/flurry/sdk/iz;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1055
    iget-wide v2, p1, Lcom/flurry/sdk/iz;->b:J

    .line 102
    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1063
    iget-wide v2, p1, Lcom/flurry/sdk/iz;->c:J

    .line 103
    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1071
    iget-wide v2, p1, Lcom/flurry/sdk/iz;->d:J

    .line 104
    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 110
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1087
    iget-object v2, p1, Lcom/flurry/sdk/iz;->f:Ljava/lang/String;

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f5

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2087
    iget-object v2, p1, Lcom/flurry/sdk/iz;->f:Ljava/lang/String;

    .line 114
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2095
    :goto_40
    iget-object v2, p1, Lcom/flurry/sdk/iz;->g:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10d

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3095
    iget-object v2, p1, Lcom/flurry/sdk/iz;->g:Ljava/lang/String;

    .line 121
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3103
    :goto_51
    iget-object v2, p1, Lcom/flurry/sdk/iz;->h:Ljava/util/Map;

    .line 129
    if-nez v2, :cond_115

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4079
    :cond_59
    iget-object v2, p1, Lcom/flurry/sdk/iz;->e:Ljava/util/Map;

    .line 141
    if-nez v2, :cond_143

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4111
    :cond_61
    iget-object v2, p1, Lcom/flurry/sdk/iz;->i:Ljava/lang/String;

    .line 152
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4119
    iget-object v2, p1, Lcom/flurry/sdk/iz;->j:Ljava/lang/String;

    .line 153
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4127
    iget v2, p1, Lcom/flurry/sdk/iz;->k:I

    .line 154
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4135
    iget v2, p1, Lcom/flurry/sdk/iz;->l:I

    .line 155
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4143
    iget-object v2, p1, Lcom/flurry/sdk/iz;->m:Ljava/lang/String;

    .line 156
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4151
    iget-object v2, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 158
    if-nez v2, :cond_177

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 7159
    :goto_82
    iget v2, p1, Lcom/flurry/sdk/iz;->o:I

    .line 167
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 169
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7167
    iget-byte v2, p1, Lcom/flurry/sdk/iz;->p:B

    .line 170
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7175
    iget-object v2, p1, Lcom/flurry/sdk/iz;->q:Ljava/lang/Long;

    .line 171
    if-nez v2, :cond_1a0

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8183
    :goto_9c
    iget-object v2, p1, Lcom/flurry/sdk/iz;->r:Ljava/util/Map;

    .line 179
    if-nez v2, :cond_1af

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 8191
    :cond_a4
    iget-object v2, p1, Lcom/flurry/sdk/iz;->s:Ljava/util/List;

    .line 190
    if-nez v2, :cond_1e1

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 8199
    :cond_ac
    iget-boolean v2, p1, Lcom/flurry/sdk/iz;->t:Z

    .line 198
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8215
    iget-object v9, p1, Lcom/flurry/sdk/iz;->v:Ljava/util/List;

    .line 204
    if-eqz v9, :cond_22b

    move v6, v5

    move v3, v5

    move v7, v5

    .line 205
    :goto_b8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_228

    .line 206
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/it;

    .line 9031
    invoke-virtual {v2}, Lcom/flurry/sdk/it;->a()[B

    move-result-object v2

    array-length v2, v2

    .line 206
    add-int/2addr v7, v2

    .line 207
    const v2, 0x27100

    if-le v7, v2, :cond_200

    .line 208
    const/4 v2, 0x5

    sget-object v6, Lcom/flurry/sdk/iy;->b:Ljava/lang/String;

    const-string/jumbo v7, "Error Log size exceeded. No more event details logged."

    invoke-static {v2, v6, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 9207
    :goto_d9
    iget v2, p1, Lcom/flurry/sdk/iz;->u:I

    .line 217
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v3, v5

    .line 219
    :goto_e2
    if-ge v3, v6, :cond_207

    .line 220
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/it;

    invoke-virtual {v2}, Lcom/flurry/sdk/it;->a()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 219
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e2

    .line 116
    :cond_f5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_f9} :catch_fb
    .catchall {:try_start_10 .. :try_end_f9} :catchall_113

    goto/16 :goto_40

    .line 246
    :catch_fb
    move-exception v2

    move-object v3, v4

    .line 247
    :goto_fd
    const/4 v4, 0x6

    :try_start_fe
    sget-object v5, Lcom/flurry/sdk/iy;->b:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    throw v2
    :try_end_107
    .catchall {:try_start_fe .. :try_end_107} :catchall_107

    .line 250
    :catchall_107
    move-exception v2

    move-object v4, v3

    :goto_109
    invoke-static {v4}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v2

    .line 123
    :cond_10d
    const/4 v2, 0x0

    :try_start_10e
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_51

    .line 250
    :catchall_113
    move-exception v2

    goto :goto_109

    .line 132
    :cond_115
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 133
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_124
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_124

    .line 144
    :cond_143
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 145
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_152
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 146
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_152

    .line 161
    :cond_177
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 5151
    iget-object v2, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 162
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 6151
    iget-object v2, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 163
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 7151
    iget-object v2, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 164
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_82

    .line 174
    :cond_1a0
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8175
    iget-object v2, p1, Lcom/flurry/sdk/iz;->q:Ljava/lang/Long;

    .line 175
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_9c

    .line 182
    :cond_1af
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 183
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1be
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 184
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 185
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/iu;

    iget v2, v2, Lcom/flurry/sdk/iu;->a:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1be

    .line 193
    :cond_1e1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ec
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/iv;

    .line 195
    invoke-virtual {v2}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_1ec

    .line 212
    :cond_200
    add-int/lit8 v3, v3, 0x1

    .line 205
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_b8

    .line 236
    :cond_207
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 237
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 245
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/sdk/iy;->a:[B
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_21d} :catch_fb
    .catchall {:try_start_10e .. :try_end_21d} :catchall_113

    .line 250
    invoke-static {v4}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 251
    return-void

    .line 250
    :catchall_221
    move-exception v2

    move-object v4, v3

    goto/16 :goto_109

    .line 246
    :catch_225
    move-exception v2

    goto/16 :goto_fd

    :cond_228
    move v6, v3

    goto/16 :goto_d9

    :cond_22b
    move v6, v5

    goto/16 :goto_d9
.end method

.method public constructor <init>([B)V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/flurry/sdk/iy;->a:[B

    .line 92
    return-void
.end method
