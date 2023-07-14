.class public final Lcom/flurry/sdk/im$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/im;
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
        "Lcom/flurry/sdk/im;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/ky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ky",
            "<",
            "Lcom/flurry/sdk/ii;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/ii$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ii$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    iput-object v0, p0, Lcom/flurry/sdk/im$a;->a:Lcom/flurry/sdk/ky;

    .line 129
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 124
    .line 1170
    if-nez p1, :cond_0

    .line 1171
    :goto_0
    return-object v9

    .line 1174
    :cond_0
    new-instance v0, Lcom/flurry/sdk/im$a$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/im$a$2;-><init>(Lcom/flurry/sdk/im$a;Ljava/io/InputStream;)V

    .line 1181
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 1182
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 1183
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 1184
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/iq;->a(I)Lcom/flurry/sdk/iq;

    move-result-object v8

    .line 1185
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 1186
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1187
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1189
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1192
    new-instance v1, Lcom/flurry/sdk/im;

    invoke-direct/range {v1 .. v9}, Lcom/flurry/sdk/im;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/iq;Ljava/util/Map;)V

    .line 1194
    invoke-static {v1, v10, v11}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;J)J

    .line 1195
    invoke-static {v1, v12}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;I)I

    .line 1196
    invoke-static {v1, v13}, Lcom/flurry/sdk/im;->b(Lcom/flurry/sdk/im;I)I

    .line 1197
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1199
    iget-object v0, p0, Lcom/flurry/sdk/im$a;->a:Lcom/flurry/sdk/ky;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ky;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 1201
    if-eqz v0, :cond_1

    .line 1202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;Ljava/util/Map;)Ljava/util/Map;

    .line 1204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ii;

    .line 1205
    iput-object v1, v0, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 1206
    invoke-static {v1}, Lcom/flurry/sdk/im;->j(Lcom/flurry/sdk/im;)Ljava/util/Map;

    move-result-object v3

    .line 2102
    iget-wide v4, v0, Lcom/flurry/sdk/ii;->b:J

    .line 1206
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v9, v1

    .line 124
    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    check-cast p2, Lcom/flurry/sdk/im;

    .line 2133
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2134
    :cond_0
    :goto_0
    return-void

    .line 2137
    :cond_1
    new-instance v0, Lcom/flurry/sdk/im$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/im$a$1;-><init>(Lcom/flurry/sdk/im$a;Ljava/io/OutputStream;)V

    .line 2145
    invoke-static {p2}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2146
    invoke-static {p2}, Lcom/flurry/sdk/im;->b(Lcom/flurry/sdk/im;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2147
    invoke-static {p2}, Lcom/flurry/sdk/im;->c(Lcom/flurry/sdk/im;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2148
    invoke-static {p2}, Lcom/flurry/sdk/im;->d(Lcom/flurry/sdk/im;)Lcom/flurry/sdk/iq;

    move-result-object v1

    .line 3034
    iget v1, v1, Lcom/flurry/sdk/iq;->e:I

    .line 2148
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2149
    invoke-static {p2}, Lcom/flurry/sdk/im;->e(Lcom/flurry/sdk/im;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2150
    invoke-static {p2}, Lcom/flurry/sdk/im;->f(Lcom/flurry/sdk/im;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2152
    invoke-static {p2}, Lcom/flurry/sdk/im;->g(Lcom/flurry/sdk/im;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2153
    invoke-static {p2}, Lcom/flurry/sdk/im;->g(Lcom/flurry/sdk/im;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2160
    :goto_1
    invoke-static {p2}, Lcom/flurry/sdk/im;->h(Lcom/flurry/sdk/im;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2161
    invoke-static {p2}, Lcom/flurry/sdk/im;->i(Lcom/flurry/sdk/im;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2163
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2165
    iget-object v0, p0, Lcom/flurry/sdk/im$a;->a:Lcom/flurry/sdk/ky;

    invoke-virtual {p2}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/ky;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto :goto_0

    .line 2156
    :cond_2
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method
