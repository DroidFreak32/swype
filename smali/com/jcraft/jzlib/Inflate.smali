.class final Lcom/jcraft/jzlib/Inflate;
.super Ljava/lang/Object;
.source "Inflate.java"


# instance fields
.field private blocks:Lcom/jcraft/jzlib/InfBlocks;

.field private method:I

.field private mode:I

.field private need:J

.field private nowrap:I

.field private was:[J

.field private wbits:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 312
    const/4 v0, 0x4

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->was:[J

    return-void
.end method

.method static inflate(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 10
    .param p0, "z"    # Lcom/jcraft/jzlib/ZStream;
    .param p1, "f"    # I

    .prologue
    .line 144
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    if-nez v2, :cond_2

    .line 145
    :cond_0
    const/4 v1, -0x2

    .line 285
    :cond_1
    :goto_0
    return v1

    .line 146
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/4 p1, -0x5

    .line 147
    :goto_1
    const/4 v1, -0x5

    .line 150
    .local v1, "r":I
    :goto_2
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 285
    const/4 v1, -0x2

    goto :goto_0

    .line 146
    .end local v1    # "r":I
    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 153
    .restart local v1    # "r":I
    :pswitch_0
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 155
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 156
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->method:I

    and-int/lit8 v2, v3, 0xf

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 157
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 158
    const-string v2, "unknown compression method"

    iput-object v2, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    goto :goto_2

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->method:I

    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v3, v3, Lcom/jcraft/jzlib/Inflate;->wbits:I

    if-le v2, v3, :cond_5

    .line 163
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 164
    const-string v2, "invalid window size"

    iput-object v2, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    goto :goto_2

    .line 168
    :cond_5
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x1

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 171
    :pswitch_1
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 173
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 174
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 176
    .local v0, "b":I
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->method:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v0

    rem-int/lit8 v2, v2, 0x1f

    if-eqz v2, :cond_6

    .line 177
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 178
    const-string v2, "incorrect header check"

    iput-object v2, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    goto/16 :goto_2

    .line 183
    :cond_6
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_7

    .line 184
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x7

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 187
    :cond_7
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x2

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 190
    .end local v0    # "b":I
    :pswitch_2
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 192
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 193
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    int-to-long v4, v3

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 194
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x3

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 197
    :pswitch_3
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 199
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 200
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v6, v3

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 201
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x4

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 204
    :pswitch_4
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 206
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 207
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v6, v3

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 208
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 211
    :pswitch_5
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    .line 213
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 214
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v6

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 215
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v2, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 216
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/4 v3, 0x6

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 217
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 219
    :pswitch_6
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 220
    const-string v2, "need dictionary"

    iput-object v2, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 222
    const/4 v1, -0x2

    goto/16 :goto_0

    .line 225
    :pswitch_7
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v2, v2, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v2, p0, v1}, Lcom/jcraft/jzlib/InfBlocks;->proc(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v1

    .line 226
    const/4 v2, -0x3

    if-ne v1, v2, :cond_8

    .line 227
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 228
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    goto/16 :goto_2

    .line 231
    :cond_8
    if-nez v1, :cond_9

    .line 232
    move v1, p1

    .line 234
    :cond_9
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 237
    move v1, p1

    .line 238
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v2, v2, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, v3, Lcom/jcraft/jzlib/Inflate;->was:[J

    invoke-virtual {v2, p0, v3}, Lcom/jcraft/jzlib/InfBlocks;->reset(Lcom/jcraft/jzlib/ZStream;[J)V

    .line 239
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v2, :cond_a

    .line 240
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xc

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 243
    :cond_a
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0x8

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 246
    :pswitch_8
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 248
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 249
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    int-to-long v4, v3

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 250
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0x9

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 253
    :pswitch_9
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 255
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 256
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v6, v3

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 257
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xa

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 260
    :pswitch_a
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 262
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 263
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v6, v3

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 264
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xb

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 267
    :pswitch_b
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    move v1, p1

    .line 269
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 270
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v6

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 272
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v2, v2, Lcom/jcraft/jzlib/Inflate;->was:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    long-to-int v2, v2

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-wide v4, v3, Lcom/jcraft/jzlib/Inflate;->need:J

    long-to-int v3, v4

    if-eq v2, v3, :cond_b

    .line 273
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 274
    const-string v2, "incorrect data check"

    iput-object v2, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    goto/16 :goto_2

    .line 279
    :cond_b
    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    const/16 v3, 0xc

    iput v3, v2, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 281
    :pswitch_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 283
    :pswitch_d
    const/4 v1, -0x3

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method final inflateEnd(Lcom/jcraft/jzlib/ZStream;)I
    .locals 1
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/InfBlocks;->free(Lcom/jcraft/jzlib/ZStream;)V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method final inflateInit$640146e7(Lcom/jcraft/jzlib/ZStream;)I
    .locals 6
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 114
    iput-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 118
    iput v2, p0, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    .line 119
    const/4 v1, 0x1

    iput v1, p0, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    .line 125
    const/16 v1, 0xf

    iput v1, p0, Lcom/jcraft/jzlib/Inflate;->wbits:I

    .line 131
    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    new-instance v3, Lcom/jcraft/jzlib/InfBlocks;

    iget-object v4, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v4, v4, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v4, :cond_0

    move-object p0, v0

    .end local p0    # "this":Lcom/jcraft/jzlib/Inflate;
    :cond_0
    const v4, 0x8000

    invoke-direct {v3, p1, p0, v4}, Lcom/jcraft/jzlib/InfBlocks;-><init>(Lcom/jcraft/jzlib/ZStream;Ljava/lang/Object;I)V

    iput-object v3, v1, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 136
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-nez v1, :cond_2

    .line 137
    :cond_1
    :goto_0
    return v2

    .line 136
    :cond_2
    const-wide/16 v4, 0x0

    iput-wide v4, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    iput-wide v4, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget v1, v1, Lcom/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    :goto_1
    iput v1, v3, Lcom/jcraft/jzlib/Inflate;->mode:I

    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    iget-object v1, v1, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v1, p1, v0}, Lcom/jcraft/jzlib/InfBlocks;->reset(Lcom/jcraft/jzlib/ZStream;[J)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
