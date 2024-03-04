.class public Lcom/nuance/swype/util/LogManager$Log;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Log"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;-><init>(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/util/LogManager$Log;->prefix:Ljava/lang/String;

    .line 184
    return-void
.end method

.method private log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/LogManager$Log;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/util/LogManager$Log;->prefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 302
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/swype/util/LogManager$Log;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    :goto_0
    const-string v1, "Swype"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 305
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private varargs logD([Ljava/lang/Object;)V
    .locals 6
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/util/LogManager$Log;->prefix:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 315
    .local v3, "msg":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;

    .prologue
    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;

    .prologue
    .line 201
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;

    .prologue
    .line 205
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;

    .prologue
    .line 209
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;
    .param p6, "m6"    # Ljava/lang/Object;

    .prologue
    .line 213
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;
    .param p6, "m6"    # Ljava/lang/Object;
    .param p7, "m7"    # Ljava/lang/Object;

    .prologue
    .line 217
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;
    .param p6, "m6"    # Ljava/lang/Object;
    .param p7, "m7"    # Ljava/lang/Object;
    .param p8, "m8"    # Ljava/lang/Object;

    .prologue
    .line 221
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;
    .param p6, "m6"    # Ljava/lang/Object;
    .param p7, "m7"    # Ljava/lang/Object;
    .param p8, "m8"    # Ljava/lang/Object;
    .param p9, "m9"    # Ljava/lang/Object;

    .prologue
    .line 226
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;
    .param p6, "m6"    # Ljava/lang/Object;
    .param p7, "m7"    # Ljava/lang/Object;
    .param p8, "m8"    # Ljava/lang/Object;
    .param p9, "m9"    # Ljava/lang/Object;
    .param p10, "m10"    # Ljava/lang/Object;
    .param p11, "m11"    # Ljava/lang/Object;
    .param p12, "m12"    # Ljava/lang/Object;

    .prologue
    .line 241
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;
    .param p6, "m6"    # Ljava/lang/Object;
    .param p7, "m7"    # Ljava/lang/Object;
    .param p8, "m8"    # Ljava/lang/Object;
    .param p9, "m9"    # Ljava/lang/Object;
    .param p10, "m10"    # Ljava/lang/Object;
    .param p11, "m11"    # Ljava/lang/Object;
    .param p12, "m12"    # Ljava/lang/Object;
    .param p13, "m13"    # Ljava/lang/Object;

    .prologue
    .line 246
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;
    .param p3, "m3"    # Ljava/lang/Object;
    .param p4, "m4"    # Ljava/lang/Object;
    .param p5, "m5"    # Ljava/lang/Object;
    .param p6, "m6"    # Ljava/lang/Object;
    .param p7, "m7"    # Ljava/lang/Object;
    .param p8, "m8"    # Ljava/lang/Object;
    .param p9, "m9"    # Ljava/lang/Object;
    .param p10, "m10"    # Ljava/lang/Object;
    .param p11, "m11"    # Ljava/lang/Object;
    .param p12, "m12"    # Ljava/lang/Object;
    .param p13, "m13"    # Ljava/lang/Object;
    .param p14, "m14"    # Ljava/lang/Object;
    .param p15, "m15"    # Ljava/lang/Object;

    .prologue
    .line 256
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const/16 v1, 0xd

    aput-object p14, v0, v1

    const/16 v1, 0xe

    aput-object p15, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/util/LogManager$Log;->logD([Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 272
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$Log;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 273
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 276
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/swype/util/LogManager$Log;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 277
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 264
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$Log;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 265
    return-void
.end method

.method public isLoggable(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 189
    sget v0, Lcom/nuance/swype/util/LogManager;->loggableLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 280
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$Log;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 281
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 288
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/swype/util/LogManager$Log;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 289
    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/swype/util/LogManager$Log;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method
