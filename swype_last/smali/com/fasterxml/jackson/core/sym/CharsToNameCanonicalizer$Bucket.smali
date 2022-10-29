.class final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field final _length:I

.field final _next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

.field final _symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V
    .registers 4
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 697
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 698
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_length:I

    .line 699
    return-void

    .line 698
    :cond_d
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public final find([CII)Ljava/lang/String;
    .registers 9
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 706
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 707
    .local v2, "sym":Ljava/lang/String;
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 710
    .local v0, "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, p3, :cond_1c

    .line 711
    const/4 v1, 0x0

    .line 713
    .local v1, "i":I
    :cond_b
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v1

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_19

    .line 716
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p3, :cond_b

    .line 717
    :cond_19
    if-ne v1, p3, :cond_1c

    .line 727
    .end local v1    # "i":I
    .end local v2    # "sym":Ljava/lang/String;
    :goto_1b
    return-object v2

    .line 721
    .restart local v2    # "sym":Ljava/lang/String;
    :cond_1c
    if-eqz v0, :cond_23

    .line 1701
    iget-object v2, v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 1702
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 725
    goto :goto_4

    .line 727
    :cond_23
    const/4 v2, 0x0

    goto :goto_1b
.end method
