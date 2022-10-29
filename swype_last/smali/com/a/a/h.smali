.class public abstract Lcom/a/a/h;
.super Lcom/a/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h$1;,
        Lcom/a/a/h$d;,
        Lcom/a/a/h$c;,
        Lcom/a/a/h$b;,
        Lcom/a/a/h$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/h$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/a/a/g;Lcom/a/a/n;Lcom/a/a/d;Lcom/a/a/f;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/a/a/h;->parseUnknownField(Lcom/a/a/g;Lcom/a/a/n;Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v0

    return v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/a/a/n;Lcom/a/a/n;Lcom/a/a/i$b;ILcom/a/a/x$a;Z)Lcom/a/a/h$c;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/a/a/n;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/a/a/n;",
            "Lcom/a/a/i$b",
            "<*>;I",
            "Lcom/a/a/x$a;",
            "Z)",
            "Lcom/a/a/h$c",
            "<TContainingType;TType;>;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/a/a/h$c;

    new-instance v0, Lcom/a/a/h$b;

    const/4 v4, 0x1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/a/a/h$b;-><init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZB)V

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/a/a/h$c;-><init>(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/h$b;B)V

    return-object v8
.end method

.method public static newSingularGeneratedExtension(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/i$b;ILcom/a/a/x$a;)Lcom/a/a/h$c;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/a/a/n;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/a/a/n;",
            "Lcom/a/a/i$b",
            "<*>;I",
            "Lcom/a/a/x$a;",
            ")",
            "Lcom/a/a/h$c",
            "<TContainingType;TType;>;"
        }
    .end annotation

    new-instance v7, Lcom/a/a/h$c;

    new-instance v0, Lcom/a/a/h$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/a/a/h$b;-><init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZB)V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/a/a/h$c;-><init>(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/h$b;B)V

    return-object v7
.end method

.method private static parseUnknownField(Lcom/a/a/g;Lcom/a/a/n;Lcom/a/a/d;Lcom/a/a/f;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/a/a/n;",
            ">(",
            "Lcom/a/a/g",
            "<",
            "Lcom/a/a/h$b;",
            ">;TMessageType;",
            "Lcom/a/a/d;",
            "Lcom/a/a/f;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 0
    invoke-static {p4}, Lcom/a/a/x;->a(I)I

    move-result v1

    invoke-static {p4}, Lcom/a/a/x;->b(I)I

    move-result v0

    .line 1000
    iget-object v3, p3, Lcom/a/a/f;->b:Ljava/util/Map;

    new-instance v5, Lcom/a/a/f$a;

    invoke-direct {v5, p1, v0}, Lcom/a/a/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h$c;

    .line 0
    if-eqz v0, :cond_4d

    .line 2000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 3000
    iget-object v3, v3, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 0
    invoke-static {v3, v4}, Lcom/a/a/g;->a(Lcom/a/a/x$a;Z)I

    move-result v3

    if-ne v1, v3, :cond_2c

    move v1, v4

    move v3, v4

    :goto_25
    if-eqz v3, :cond_50

    invoke-virtual {p2, p4}, Lcom/a/a/d;->b(I)Z

    move-result v0

    :goto_2b
    return v0

    .line 4000
    :cond_2c
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 0
    invoke-static {v3}, Lcom/a/a/h$b;->b(Lcom/a/a/h$b;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 5000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 0
    invoke-static {v3}, Lcom/a/a/h$b;->c(Lcom/a/a/h$b;)Lcom/a/a/x$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/x$a;->c()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 6000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 7000
    iget-object v3, v3, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 0
    invoke-static {v3, v2}, Lcom/a/a/g;->a(Lcom/a/a/x$a;Z)I

    move-result v3

    if-ne v1, v3, :cond_4d

    move v1, v2

    move v3, v4

    goto :goto_25

    :cond_4d
    move v1, v4

    move v3, v2

    goto :goto_25

    :cond_50
    if-eqz v1, :cond_96

    invoke-virtual {p2}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/a/a/d;->d(I)I

    move-result v1

    .line 8000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 9000
    iget-object v3, v3, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 0
    sget-object v4, Lcom/a/a/x$a;->n:Lcom/a/a/x$a;

    if-ne v3, v4, :cond_7d

    :goto_62
    invoke-virtual {p2}, Lcom/a/a/d;->w()I

    move-result v3

    if-lez v3, :cond_91

    .line 10000
    invoke-virtual {p2}, Lcom/a/a/d;->s()I

    .line 11000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 12000
    iget-object v3, v3, Lcom/a/a/h$b;->a:Lcom/a/a/i$b;

    .line 0
    invoke-interface {v3}, Lcom/a/a/i$b;->a$595cc563()Lcom/a/a/i$a;

    move-result-object v3

    if-nez v3, :cond_77

    move v0, v2

    goto :goto_2b

    .line 13000
    :cond_77
    iget-object v4, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 0
    invoke-virtual {p0, v4, v3}, Lcom/a/a/g;->b(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto :goto_62

    :cond_7d
    :goto_7d
    invoke-virtual {p2}, Lcom/a/a/d;->w()I

    move-result v3

    if-lez v3, :cond_91

    .line 14000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 15000
    iget-object v3, v3, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 0
    invoke-static {p2, v3}, Lcom/a/a/g;->a(Lcom/a/a/d;Lcom/a/a/x$a;)Ljava/lang/Object;

    move-result-object v3

    .line 16000
    iget-object v4, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 0
    invoke-virtual {p0, v4, v3}, Lcom/a/a/g;->b(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto :goto_7d

    :cond_91
    invoke-virtual {p2, v1}, Lcom/a/a/d;->e(I)V

    :goto_94
    move v0, v2

    goto :goto_2b

    :cond_96
    sget-object v1, Lcom/a/a/h$1;->a:[I

    .line 17000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 18000
    iget-object v3, v3, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 19000
    iget-object v3, v3, Lcom/a/a/x$a;->s:Lcom/a/a/x$b;

    .line 0
    invoke-virtual {v3}, Lcom/a/a/x$b;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_14e

    .line 33000
    iget-object v1, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 34000
    iget-object v1, v1, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 0
    invoke-static {p2, v1}, Lcom/a/a/g;->a(Lcom/a/a/d;Lcom/a/a/x$a;)Ljava/lang/Object;

    move-result-object v1

    .line 35000
    :cond_af
    :goto_af
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 36000
    iget-boolean v3, v3, Lcom/a/a/h$b;->d:Z

    .line 0
    if-eqz v3, :cond_144

    .line 37000
    iget-object v0, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 0
    invoke-virtual {p0, v0, v1}, Lcom/a/a/g;->b(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto :goto_94

    :pswitch_bb
    const/4 v3, 0x0

    .line 20000
    iget-object v1, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 21000
    iget-boolean v1, v1, Lcom/a/a/h$b;->d:Z

    .line 0
    if-nez v1, :cond_14b

    .line 22000
    iget-object v1, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 0
    invoke-virtual {p0, v1}, Lcom/a/a/g;->a(Lcom/a/a/g$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/n;

    if-eqz v1, :cond_14b

    invoke-interface {v1}, Lcom/a/a/n;->toBuilder()Lcom/a/a/n$a;

    move-result-object v1

    :goto_d0
    if-nez v1, :cond_d8

    .line 23000
    iget-object v1, v0, Lcom/a/a/h$c;->c:Lcom/a/a/n;

    .line 0
    invoke-interface {v1}, Lcom/a/a/n;->newBuilderForType()Lcom/a/a/n$a;

    move-result-object v1

    .line 24000
    :cond_d8
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 25000
    iget-object v3, v3, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 0
    sget-object v5, Lcom/a/a/x$a;->j:Lcom/a/a/x$a;

    if-ne v3, v5, :cond_10b

    .line 26000
    iget-object v3, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 27000
    iget v3, v3, Lcom/a/a/h$b;->b:I

    .line 28000
    iget v4, p2, Lcom/a/a/d;->i:I

    iget v5, p2, Lcom/a/a/d;->j:I

    if-lt v4, v5, :cond_ef

    invoke-static {}, Lcom/a/a/j;->h()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_ef
    iget v4, p2, Lcom/a/a/d;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/a/a/d;->i:I

    invoke-interface {v1, p2, p3}, Lcom/a/a/n$a;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n$a;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/a/a/x;->a(II)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/a/a/d;->a(I)V

    iget v3, p2, Lcom/a/a/d;->i:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p2, Lcom/a/a/d;->i:I

    .line 0
    :goto_106
    invoke-interface {v1}, Lcom/a/a/n$a;->build()Lcom/a/a/n;

    move-result-object v1

    goto :goto_af

    .line 29000
    :cond_10b
    invoke-virtual {p2}, Lcom/a/a/d;->s()I

    move-result v3

    iget v5, p2, Lcom/a/a/d;->i:I

    iget v6, p2, Lcom/a/a/d;->j:I

    if-lt v5, v6, :cond_11a

    invoke-static {}, Lcom/a/a/j;->h()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_11a
    invoke-virtual {p2, v3}, Lcom/a/a/d;->d(I)I

    move-result v3

    iget v5, p2, Lcom/a/a/d;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p2, Lcom/a/a/d;->i:I

    invoke-interface {v1, p2, p3}, Lcom/a/a/n$a;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n$a;

    invoke-virtual {p2, v4}, Lcom/a/a/d;->a(I)V

    iget v4, p2, Lcom/a/a/d;->i:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p2, Lcom/a/a/d;->i:I

    invoke-virtual {p2, v3}, Lcom/a/a/d;->e(I)V

    goto :goto_106

    .line 30000
    :pswitch_134
    invoke-virtual {p2}, Lcom/a/a/d;->s()I

    .line 31000
    iget-object v1, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 32000
    iget-object v1, v1, Lcom/a/a/h$b;->a:Lcom/a/a/i$b;

    .line 0
    invoke-interface {v1}, Lcom/a/a/i$b;->a$595cc563()Lcom/a/a/i$a;

    move-result-object v1

    if-nez v1, :cond_af

    move v0, v2

    goto/16 :goto_2b

    .line 38000
    :cond_144
    iget-object v0, v0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    .line 0
    invoke-virtual {p0, v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto/16 :goto_94

    :cond_14b
    move-object v1, v3

    goto :goto_d0

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_134
    .end packed-switch
.end method


# virtual methods
.method public getParserForType()Lcom/a/a/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<+",
            "Lcom/a/a/n;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeExtensionsImmutable()V
    .registers 1

    return-void
.end method

.method public parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/a/a/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/a/a/h$d;

    invoke-direct {v0, p0}, Lcom/a/a/h$d;-><init>(Lcom/a/a/n;)V

    return-object v0
.end method
