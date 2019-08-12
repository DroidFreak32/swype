.class final Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
.super Ljava/lang/Object;
.source "CharsetUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/util/CharsetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Charset"
.end annotation


# instance fields
.field private aliases:[Ljava/lang/String;

.field private canonical:Ljava/lang/String;

.field private mime:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "canonical"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    .line 796
    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    .line 797
    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    .line 800
    iput-object p1, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    .line 801
    iput-object p2, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    .line 802
    iput-object p3, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    .line 803
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .prologue
    .line 794
    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .prologue
    .line 794
    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .prologue
    .line 794
    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 806
    move-object v0, p1

    check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 807
    .local v0, "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
